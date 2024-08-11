import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';
import 'package:silab/features/announcement/presentation/widgets/announcement_carousel.dart';
import 'package:silab/features/home/presentation/widgets/class_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<GetAllAnnouncementsBloc>().add(GetAllAnnouncements());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 175,
            width: 500,
            child: AnnouncementCarousel(),
          ),
          ClassList(),
        ],
      ),
    );
  }
}
