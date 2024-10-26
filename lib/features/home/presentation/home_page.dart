import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';
import 'package:silab/features/announcement/presentation/widgets/announcement_carousel.dart';
import 'package:silab/features/classes/presentation/bloc/user_registered_class/user_registered_class_bloc.dart';
import 'package:silab/features/classes/presentation/widgets/registered_class_listview.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_event.dart';
import 'package:silab/features/select_subjects/presentation/widgets/pick_class_banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<GetAllAnnouncementsBloc>().add(GetAllAnnouncements());
    context.read<UserRegisteredClassBloc>().add(GetUserRegisteredClass());
    context
        .read<UserClassOptionByPaidSubjectBloc>()
        .add(GetUserClassOptionByPaidSubject());
    // context.read<UserDetailsBloc>().add(GetUserDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: RefreshIndicator(
        color: const Color(0xffFFBF01),
        onRefresh: () async {
          context.read<GetAllAnnouncementsBloc>().add(GetAllAnnouncements());
          context.read<UserRegisteredClassBloc>().add(GetUserRegisteredClass());
          context
              .read<UserClassOptionByPaidSubjectBloc>()
              .add(GetUserClassOptionByPaidSubject());
        },
        child: ListView(
          shrinkWrap: true,
          children: const [
            SizedBox(
              height: 210,
              width: double.infinity,
              child: AnnouncementCarousel(),
            ),
            SizedBox(height: 8),
            PickClassBanner(),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: RegisteredClassListView(),
            ),
          ],
        ),
      ),
    );
  }
}
