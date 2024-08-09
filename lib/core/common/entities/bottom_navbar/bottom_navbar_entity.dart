import 'package:flutter_svg/svg.dart';

class BottomNavbarEntity {
  final SvgPicture icon;
  final SvgPicture iconActive;
  final String label;

  BottomNavbarEntity({required this.icon, required this.label, required this.iconActive});
}
