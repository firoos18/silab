import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_subject_response/add_selected_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/repository/selected_subject_repository.dart';

class AddSelectedSubjectUseCase
    implements
        UseCase<Either<Failures, AddSelectedSubjectResponseEntity>,
            List<String>?> {
  final SelectedSubjectRepository selectedSubjectRepository;

  const AddSelectedSubjectUseCase(this.selectedSubjectRepository);

  @override
  Future<Either<Failures, AddSelectedSubjectResponseEntity>> call(
      {List<String>? params}) async {
    return await selectedSubjectRepository.addUserSelectedSubject(
        subjects: params);
  }
}
