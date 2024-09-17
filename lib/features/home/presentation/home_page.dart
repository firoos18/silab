import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';
import 'package:silab/features/announcement/presentation/widgets/announcement_carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<GetAllAnnouncementsBloc>().add(GetAllAnnouncements());
    // context.read<UserRegisteredClassBloc>().add(GetUserRegisteredClass());
    // context.read<UserDetailsBloc>().add(GetUserDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 210,
            width: double.infinity,
            child: AnnouncementCarousel(),
          ),
          SizedBox(height: 16),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 15),
          //   child: RegisteredClassListView(),
          // ),
        ],
      ),
    );
  }
}
