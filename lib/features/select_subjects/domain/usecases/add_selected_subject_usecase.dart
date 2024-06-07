import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/select_subjects/data/models/add_selected_subject_model.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_subject_response/add_selected_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/repository/selected_subject_repository.dart';

class AddSelectedSubjectUseCase
    implements
        UseCase<Either<Failures, AddSelectedSubjectResponseEntity>,
            AddSelectedSubjectModel> {
  final SelectedSubjectRepository selectedSubjectRepository;

  const AddSelectedSubjectUseCase(this.selectedSubjectRepository);

  @override
  Future<Either<Failures, AddSelectedSubjectResponseEntity>> call(
      {AddSelectedSubjectModel? params}) async {
    return await selectedSubjectRepository.addSelectedSubject(params!);
  }
}
