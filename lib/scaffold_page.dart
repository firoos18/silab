import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/entities/bottom_navbar/bottom_navbar_entity.dart';
import 'package:silab/core/common/widgets/custom_bottom_navbar.dart';
import 'package:silab/features/authentication/presentation/bloc/authentication_bloc.dart';
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
  bool _isNavbarVisible = true;
  ScrollController _scrollController = ScrollController();

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
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    context.read<AuthenticationBloc>().add(CheckAccessTokenExpiry());
    _scrollController = ScrollController();
    super.initState();
  }

  var appBarTitle = '';

  @override
  Widget build(BuildContext context) {
    var currentRoute = GoRouterState.of(context).uri.toString();

    if (currentRoute.startsWith('/home/pengumuman')) {
      setState(() {
        appBarTitle = 'Pengumuman';
      });
    } else if (currentRoute.startsWith('/home/class/')) {
      setState(() {
        appBarTitle = 'Detail Kelas';
      });
    } else {
      switch (currentRoute) {
        case '/home/daftar-praktikum':
          setState(() {
            appBarTitle = 'Pendaftaran Praktikum';
          });
          break;
        case '/home/pengumuman':
          break;
        case '/home/ringkasan-praktikum':
          setState(() {
            appBarTitle = 'Ringkasan Pendaftaran';
          });
          break;
        case '/home/payment-status':
          setState(() {
            appBarTitle = 'Status Pembayaran';
          });
          break;
        case '/home/pilih-kelas':
          setState(() {
            appBarTitle = 'Pilih Kelas';
          });
          break;
        default:
          break;
      }
    }

    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state is AccessTokenExpired) {
          context.goNamed('authentication');
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: currentRoute == '/home' || currentRoute == '/schedule'
            ? AppBar(
                title: currentIndex != 0
                    ? Text(
                        currentIndex == 1 ? "Jadwal Praktikum" : "Profile",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    : const UserWelcomeWidget(),
                forceMaterialTransparency: true,
              )
            : currentRoute.contains('/home')
                ? AppBar(
                    title: Text(
                      appBarTitle,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: InkWell(
                      onTap: () => context.pop(),
                      borderRadius: BorderRadius.circular(100),
                      child: const Icon(
                        Icons.chevron_left,
                        size: 32,
                      ),
                    ),
                    forceMaterialTransparency: true,
                  )
                : null,
        body: SafeArea(
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              if (scrollNotification is UserScrollNotification) {
                if (scrollNotification.direction == ScrollDirection.reverse &&
                    scrollNotification.metrics.axis == Axis.vertical) {
                  if (_isNavbarVisible) {
                    setState(() => _isNavbarVisible = false);
                  }
                } else if (scrollNotification.direction ==
                    ScrollDirection.forward) {
                  if (!_isNavbarVisible) {
                    setState(() => _isNavbarVisible = true);
                  }
                }
              }
              return true;
            },
            child: SingleChildScrollView(
              controller: _scrollController,
              child: widget.navigationShell,
            ),
          ),
        ),
        extendBody: true,
        floatingActionButton: CustomBottomNavbar(
            isVisible: _isNavbarVisible,
            currentIndex: currentIndex,
            items: items,
            scrollController: _scrollController,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });

              _goBranch(index);
            }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
