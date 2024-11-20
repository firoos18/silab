import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/classes/domain/entities/meetings_response/meetings_response_entity.dart';
import 'package:silab/features/classes/domain/repository/class_repository.dart';

class GetUserMeetingsDataUsecase
    implements UseCase<Either<Failures, MeetingsResponseEntity>, String?> {
  final ClassRepository classRepository;

  const GetUserMeetingsDataUsecase(this.classRepository);

  @override
  Future<Either<Failures, MeetingsResponseEntity>> call(
      {String? params}) async {
    return await classRepository.getUserMeetingsData(classId: params);
  }
}
