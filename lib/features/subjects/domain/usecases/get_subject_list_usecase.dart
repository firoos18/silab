import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/subjects/domain/entities/subject_list_response/subject_list_response_entity.dart';
import 'package:silab/features/subjects/domain/repository/subject_repository.dart';

class GetSubjectListUseCase
    implements UseCase<Either<Failures, SubjectListResponseEntity>, Null> {
  final SubjectRepository subjectRepository;

  const GetSubjectListUseCase(this.subjectRepository);

  @override
  Future<Either<Failures, SubjectListResponseEntity>> call(
      {Null params}) async {
    return await subjectRepository.getSubjectList();
  }
}
