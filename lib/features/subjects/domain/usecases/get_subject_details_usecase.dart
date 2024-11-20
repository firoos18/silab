import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/subjects/domain/entities/subject_response/subject_response_entity.dart';
import 'package:silab/features/subjects/domain/repository/subject_repository.dart';

class GetSubjectDetailsUseCase
    implements UseCase<Either<Failures, SubjectResponseEntity>, String?> {
  final SubjectRepository subjectRepository;

  const GetSubjectDetailsUseCase(this.subjectRepository);

  @override
  Future<Either<Failures, SubjectResponseEntity>> call({String? params}) async {
    return await subjectRepository.getSubjectDetails(params);
  }
}
