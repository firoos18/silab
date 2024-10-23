import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/classes/domain/entities/attendance/attendance_entity.dart';
import 'package:silab/features/classes/domain/entities/class_list_response/classes_response_entity.dart';
import 'package:silab/features/classes/domain/entities/class_response/class_response_entity.dart';
import 'package:silab/features/classes/domain/entities/classes_details_response/classes_details_response_entity.dart';
import 'package:silab/features/classes/domain/entities/meetings_response/meetings_response_entity.dart';

abstract class ClassRepository {
  Future<Either<Failures, ClassesResponseEntity>> getClasses();

  Future<Either<Failures, ClassResponseEntity>> getClassById(String? classId);

  Future<Either<Failures, ClassesResponseEntity>> getUserRegisteredClasses();

  Future<Either<Failures, ClassesDetailsResponseEntity>>
      getUserSelectedClassesDetails({
    List<String>? classes,
  });

  Future<Either<Failures, MeetingsResponseEntity>> getUserMeetingsData({
    String? classId,
  });

  Future<Either<Failures, AttendanceEntity>> addUserAttendances({
    String? classId,
    String? meetingId,
    String? meetingToken,
  });
}
