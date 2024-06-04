import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_subject_response/selected_subject_response_entity.dart';

abstract class SelectedSubjectRepository {
  Future<Either<Failures, SelectedSubjectResponseEntity>>
      getSelectedSubjectByNim(String? nim);
}
