import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/classes/domain/entities/meetings/meetings_entity.dart';
import 'package:silab/features/classes/presentation/bloc/user_meetings/user_meetings_bloc.dart';

class ClassDetailTabView extends StatefulWidget {
  const ClassDetailTabView({super.key});

  @override
  State<ClassDetailTabView> createState() => _ClassDetailPageTabiewState();
}

class _ClassDetailPageTabiewState extends State<ClassDetailTabView> {
  int pageLocation = 0;
  PageController controller = PageController();

  List<String> pageItems = ['Presensi', 'Modul', 'Classmates'];

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.shortestSide,
      width: double.maxFinite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 40,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: pageItems.length,
              itemBuilder: (context, index) => InkWell(
                borderRadius: BorderRadius.circular(90),
                splashColor: Colors.transparent,
                onTap: () => controller.jumpToPage(index),
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: pageLocation != index
                        ? const Color(0xffF4F4F9)
                        : const Color(0xff3272CA),
                    border: pageLocation != index
                        ? Border.all(
                            color:
                                const Color(0xff1D1D1D).withValues(alpha: 0.5),
                            width: 0.5,
                            strokeAlign: BorderSide.strokeAlignInside,
                          )
                        : null,
                  ),
                  child: Center(
                    child: Text(
                      pageItems[index],
                      style: TextStyle(
                        color: pageLocation != index
                            ? const Color(0xff1D1D1D).withValues(alpha: 0.7)
                            : const Color(0xffF4F4F9),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Flexible(
            fit: FlexFit.loose,
            child: PageView.builder(
              controller: controller,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (value) => setState(() {
                pageLocation = value;
              }),
              itemCount: pageItems.length,
              itemBuilder: (context, index) =>
                  BlocBuilder<UserMeetingsBloc, UserMeetingsState>(
                builder: (context, state) {
                  List<MeetingsEntity> meetingList;
                  if (state is UserMeetingsLoaded &&
                      state.meetingsData != null) {
                    meetingList = state.meetingsData!.reversed.toList();

                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.meetingsData?.length ?? 1,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, idx) => Container(
                          width: double.infinity,
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: const Color(0xffF4F4F9),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(meetingList[idx].meeting_name!),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: meetingList[idx].is_attended ==
                                              null &&
                                          meetingList[idx].submitted_at == null
                                      ? null
                                      : Border.all(
                                          color: meetingList[idx].is_attended !=
                                                      null &&
                                                  meetingList[idx]
                                                          .submitted_at ==
                                                      null
                                              ? const Color(0xffF1416C)
                                              : meetingList[idx].is_attended !=
                                                          null &&
                                                      meetingList[idx]
                                                              .submitted_at !=
                                                          null
                                                  ? const Color(0xff50CD89)
                                                  : Colors.transparent,
                                          width: 2,
                                        ),
                                  color: meetingList[idx].is_attended != null &&
                                          meetingList[idx].submitted_at == null
                                      ? const Color(0xffFFF5F8)
                                      : meetingList[idx].is_attended != null &&
                                              meetingList[idx].submitted_at !=
                                                  null
                                          ? const Color(0xffE8FFF3)
                                          : Colors.transparent,
                                ),
                                child: Image.asset(
                                  scale: 2,
                                  'assets/image/${meetingList[idx].is_attended != null && meetingList[idx].submitted_at == null ? 'absence.png' : meetingList[idx].is_attended != null && meetingList[idx].submitted_at != null ? 'presence.png' : 'none.png'}',
                                ),
                              )
                            ],
                          )),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
