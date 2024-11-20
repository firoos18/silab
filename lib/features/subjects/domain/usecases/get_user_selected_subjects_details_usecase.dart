import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/subjects/data/models/user_selected_subjects/user_selected_subjects_model.dart';
import 'package:silab/features/subjects/domain/entities/subject_list_response/subject_list_response_entity.dart';
import 'package:silab/features/subjects/domain/repository/subject_repository.dart';

class GetUserSelectedSubjectsDetailsUseCase
    implements
        UseCase<Either<Failures, SubjectListResponseEntity>,
            UserSelectedSubjectsModel?> {
  final SubjectRepository subjectRepository;

  const GetUserSelectedSubjectsDetailsUseCase(this.subjectRepository);

  @override
  Future<Either<Failures, SubjectListResponseEntity>> call(
      {UserSelectedSubjectsModel? params}) async {
    return subjectRepository.getUserSelectedSubjectsDetails(subjects: params);
  }
}
