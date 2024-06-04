import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_subject_response/selected_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/repository/selected_subject_repository.dart';

class GetSelectedSubjectByNimUsecase
    implements
        UseCase<Either<Failures, SelectedSubjectResponseEntity>, String> {
  final SelectedSubjectRepository selectedSubjectRepository;

  const GetSelectedSubjectByNimUsecase(this.selectedSubjectRepository);

  @override
  Future<Either<Failures, SelectedSubjectResponseEntity>> call(
      {String? params}) async {
    return await selectedSubjectRepository.getSelectedSubjectByNim(params);
  }
}
