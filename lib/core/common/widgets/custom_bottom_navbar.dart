import 'package:flutter/material.dart';
import 'package:silab/core/common/entities/bottom_navbar/bottom_navbar_entity.dart';

class CustomBottomNavbar extends StatefulWidget {
  final List<BottomNavbarEntity> items;
  final void Function(int) onTap;
  final int currentIndex;
  final ScrollController scrollController;
  final bool isVisible;

  const CustomBottomNavbar({
    super.key,
    this.currentIndex = 0,
    required this.items,
    required this.onTap,
    required this.scrollController,
    required this.isVisible,
  });

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0, 1.2), // Slide off-screen downward
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void didUpdateWidget(CustomBottomNavbar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isVisible) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Container(
        width: double.infinity,
        height: 70,
        margin: const EdgeInsets.only(right: 15, left: 15, top: 12),
        padding: const EdgeInsets.symmetric(horizontal: 45),
        decoration: BoxDecoration(
          color: const Color(0xff3272CA),
          borderRadius: BorderRadius.circular(90),
        ),
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
    );
  }
}
