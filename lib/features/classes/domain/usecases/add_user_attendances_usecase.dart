import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/classes/domain/entities/attendance/attendance_entity.dart';
import 'package:silab/features/classes/domain/repository/class_repository.dart';

class AddUserAttendancesUsecase
    implements UseCase<Either<Failures, AttendanceEntity>, String?> {
  final ClassRepository classRepository;

  const AddUserAttendancesUsecase(this.classRepository);

  @override
  Future<Either<Failures, AttendanceEntity>> call({
    String? params,
    String? classId,
    String? meetingId,
    String? meetingToken,
  }) async {
    return await classRepository.addUserAttendances(
        classId: classId, meetingId: meetingId, meetingToken: meetingToken);
  }
}
