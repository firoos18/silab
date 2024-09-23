import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/entities/class/class_entity.dart';
import 'package:silab/features/classes/presentation/pages/class_detail_page.dart';

class RegisteredClassCard extends StatelessWidget {
  final ClassEntity? classEntity;

  const RegisteredClassCard({
    super.key,
    this.classEntity,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(
        'class',
        pathParameters: {'id': classEntity!.subject_class!},
        extra: ClassDetailPageExtra(classEntity: classEntity!),
      ),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        height: 120,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xfff4f4f9),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff1d1d1d),
                      ),
                      child: Center(
                        child: Text(
                          classEntity != null
                              ? classEntity!.subject_class!
                              : 'A',
                          style: const TextStyle(
                            color: Color(0xfff4f4f9),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          classEntity != null
                              ? classEntity!.subject_name!
                              : 'Subject Name',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          classEntity != null
                              ? classEntity!.lecturer!
                              : 'Lecturer Name',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color(0xff3272CA),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    'assets/image/arrow_right_up.png',
                    fit: BoxFit.scaleDown,
                  ),
                )
              ],
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hari',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xff1d1d1d).withOpacity(0.5),
                          ),
                        ),
                        Text(
                          classEntity != null ? classEntity!.day! : 'Hari',
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: const Color(0xff1d1d1d).withOpacity(0.5),
                    thickness: 1,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sesi',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xff1d1d1d).withOpacity(0.5),
                          ),
                        ),
                        Text(
                          classEntity != null
                              ? classEntity!.session_time!
                              : 'Jadwal',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
