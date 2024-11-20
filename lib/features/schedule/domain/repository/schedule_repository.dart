import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/schedule/domain/entities/schedule/schedule_entity.dart';

abstract class ScheduleRepository {
  Future<Either<Failures, List<ScheduleEntity>>> getUserSchedule();
}
