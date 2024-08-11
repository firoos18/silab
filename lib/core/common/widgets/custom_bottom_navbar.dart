import 'package:flutter/material.dart';
import 'package:silab/core/common/entities/bottom_navbar/bottom_navbar_entity.dart';

class CustomBottomNavbar extends StatefulWidget {
  final List<BottomNavbarEntity> items;
  final void Function(int) onTap;
  final int currentIndex;

  const CustomBottomNavbar({
    super.key,
    this.currentIndex = 0,
    required this.items,
    required this.onTap,
  });

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: const EdgeInsets.only(right: 15, left: 15, bottom: 12, top: 12),
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 8),
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
                          fontSize:
                              widget.currentIndex == widget.items.indexOf(item)
                                  ? 14
                                  : 12,
                          color:
                              widget.currentIndex == widget.items.indexOf(item)
                                  ? Colors.white
                                  : Colors.white70,
                          fontWeight:
                              widget.currentIndex == widget.items.indexOf(item)
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
    );
  }
}
