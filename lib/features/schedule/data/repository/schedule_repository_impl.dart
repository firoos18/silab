import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/schedule/data/data_sources/schedule_api_service.dart';
import 'package:silab/features/schedule/domain/entities/schedule/schedule_entity.dart';
import 'package:silab/features/schedule/domain/repository/schedule_repository.dart';

class ScheduleRepositoryImpl implements ScheduleRepository {
  final ScheduleApiService scheduleApiService;

  const ScheduleRepositoryImpl(this.scheduleApiService);

  @override
  Future<Either<Failures, List<ScheduleEntity>>> getUserSchedule() async {
    try {
      final result = await scheduleApiService.getUserSchedule();

      return Right(result.data!);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
