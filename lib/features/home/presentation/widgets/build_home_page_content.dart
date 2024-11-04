import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';
import 'package:silab/features/classes/presentation/bloc/user_registered_class/user_registered_class_bloc.dart';
import 'package:silab/features/home/presentation/widgets/build_announcement_carousel.dart';
import 'package:silab/features/home/presentation/widgets/build_registered_class_listview.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_event.dart';
import 'package:silab/features/select_subjects/presentation/widgets/pick_class_banner.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';

class BuildHomePageContent extends StatelessWidget {
  const BuildHomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: const Color(0xff3272CA),
      backgroundColor: Colors.white,
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      onRefresh: () async {
        context.read<UserDetailsBloc>().add(GetUserDetails());
        context.read<GetAllAnnouncementsBloc>().add(GetAllAnnouncements());
        context.read<UserRegisteredClassBloc>().add(GetUserRegisteredClass());
        context
            .read<UserClassOptionByPaidSubjectBloc>()
            .add(GetUserClassOptionByPaidSubject());
      },
      child: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: const [
          BuildAnnouncementCarousel(),
          SizedBox(height: 8),
          PickClassBanner(),
          SizedBox(height: 16),
          BuildRegisteredClassListview(),
        ],
      ),
    );
  }
}
