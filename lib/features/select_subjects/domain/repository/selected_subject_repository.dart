import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_class_response/add_selected_class_response_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_subject_response/add_selected_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_subject_response/selected_subject_response_entity.dart';

abstract class SelectedSubjectRepository {
  Future<Either<Failures, SelectedSubjectResponseEntity>>
      getSelectedSubjectByNim(String? nim);

  Future<Either<Failures, AddSelectedSubjectResponseEntity>> addSelectedSubject(
      {List<String>? subjects});

  Future<Either<Failures, AddSelectedClassResponseEntity>> addSelectedClass(
      {Map<String, String>? selectedClass});
}
