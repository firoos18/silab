import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/schedule/domain/entities/schedule/schedule_entity.dart';
import 'package:silab/features/schedule/domain/repository/schedule_repository.dart';

class GetUserScheduleUsecase
    implements UseCase<Either<Failures, List<ScheduleEntity>>, Null> {
  final ScheduleRepository scheduleRepository;

  const GetUserScheduleUsecase(this.scheduleRepository);

  @override
  Future<Either<Failures, List<ScheduleEntity>>> call({Null params}) async {
    return await scheduleRepository.getUserSchedule();
  }
}
