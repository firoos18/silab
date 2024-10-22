import 'package:flutter/material.dart';
import 'package:silab/core/common/entities/class/class_entity.dart';

class ClassCard extends StatelessWidget {
  final ClassEntity classEntity;

  const ClassCard({super.key, required this.classEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xffBFD9EF),
          width: 1.5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xffFBFBEF),
                  border: Border.all(
                    color: const Color(0xffFFBF01),
                    width: 1.5,
                    strokeAlign: BorderSide.strokeAlignInside,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    classEntity.subject_class!,
                    style: const TextStyle(
                      color: Color(0xffFFBF01),
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
                    classEntity.subject_name!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    classEntity.lecturer!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        classEntity.day!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(
                  color: Color(0xffBFD9EF),
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
                        classEntity.session_time!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
