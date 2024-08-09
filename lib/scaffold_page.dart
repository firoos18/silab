import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/entities/bottom_navbar/bottom_navbar_entity.dart';
import 'package:silab/core/common/widgets/custom_bottom_navbar.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';
import 'package:silab/features/user_details/presentation/widgets/user_welcome_widget.dart';

class ScaffoldPage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const ScaffoldPage({
    super.key,
    required this.navigationShell,
  });

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int currentIndex = 0;

  List<BottomNavbarEntity> items = [
    BottomNavbarEntity(
        icon: SvgPicture.asset('assets/image/home.svg'),
        iconActive: SvgPicture.asset('assets/image/home_active.svg'),
        label: 'Beranda'),
    BottomNavbarEntity(
        icon: SvgPicture.asset('assets/image/schedule.svg'),
        iconActive: SvgPicture.asset('assets/image/schedule_active.svg'),
        label: 'Jadwal'),
    BottomNavbarEntity(
        icon: SvgPicture.asset('assets/image/profile.svg'),
        iconActive: SvgPicture.asset('assets/image/profile_active.svg'),
        label: 'Profil'),
  ];

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  void initState() {
    context.read<UserDetailsBloc>().add(GetUserDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: currentIndex != 0
            ? Text(
                currentIndex == 1 ? "Find" : "Profile",
              )
            : const UserWelcomeWidget(),
        actions: currentIndex == 0
            ? [
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  padding: const EdgeInsets.all(8),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFBF01).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: SvgPicture.asset('assets/image/notification.svg'),
                )
              ]
            : null,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: widget.navigationShell,
        ),
      ),
      bottomNavigationBar: CustomBottomNavbar(
          currentIndex: currentIndex,
          items: items,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });

            _goBranch(index);
          }),
    );
  }
}
