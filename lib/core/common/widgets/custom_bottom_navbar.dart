import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:silab/core/common/entities/bottom_navbar/bottom_navbar_entity.dart';

class CustomBottomNavbar extends StatefulWidget {
  final List<BottomNavbarEntity> items;
  final void Function(int) onTap;
  final int currentIndex;
  final ScrollController scrollController;

  const CustomBottomNavbar({
    super.key,
    this.currentIndex = 0,
    required this.items,
    required this.onTap,
    required this.scrollController,
  });

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    if (widget.scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (_isVisible) {
        setState(() {
          _isVisible = false;
        });
      }
    } else if (widget.scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      if (!_isVisible) {
        setState(() {
          _isVisible = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: double.infinity,
        height: _isVisible ? 70 : 45,
        margin: const EdgeInsets.only(right: 15, left: 15, top: 12),
        padding: const EdgeInsets.symmetric(horizontal: 45),
        decoration: BoxDecoration(
          color: _isVisible ? const Color(0xff3272CA) : Colors.transparent,
          borderRadius: BorderRadius.circular(90),
        ),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 100),
          opacity: _isVisible ? 1 : 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: widget.items
                .map(
                  (item) => GestureDetector(
                    onTap: () {
                      widget.onTap(widget.items.indexOf(item));
                    },
                    child: SizedBox(
                      width: 80,
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          widget.currentIndex == widget.items.indexOf(item)
                              ? item.iconActive
                              : item.icon,
                          const SizedBox(height: 2),
                          AnimatedDefaultTextStyle(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            style: TextStyle(
                              fontSize: widget.currentIndex ==
                                      widget.items.indexOf(item)
                                  ? 14
                                  : 12,
                              color: widget.currentIndex ==
                                      widget.items.indexOf(item)
                                  ? Colors.white
                                  : Colors.white70,
                              fontWeight: widget.currentIndex ==
                                      widget.items.indexOf(item)
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                            child: Text(item.label),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
