import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_class_response/add_selected_class_response_entity.dart';
import 'package:silab/features/select_subjects/domain/repository/selected_subject_repository.dart';

class AddSelectedClassUseCase
    implements
        UseCase<Either<Failures, AddSelectedClassResponseEntity>,
            List<String>?> {
  final SelectedSubjectRepository selectedSubjectRepository;

  const AddSelectedClassUseCase(this.selectedSubjectRepository);

  @override
  Future<Either<Failures, AddSelectedClassResponseEntity>> call(
      {List<String>? params}) async {
    return selectedSubjectRepository.addSelectedClass(selectedClass: params);
  }
}
