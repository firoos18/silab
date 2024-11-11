import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_class_response/add_selected_class_response_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_subject_response/add_selected_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_subject_response/selected_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/user_class_option_by_paid_subject_response/user_class_option_by_paid_subject_response_entity.dart';

abstract class SelectedSubjectRepository {
  Future<Either<Failures, SelectedSubjectResponseEntity>>
      getUserSelectedSubjects();

  Future<Either<Failures, AddSelectedSubjectResponseEntity>>
      addUserSelectedSubject({List<String>? subjects});

  Future<Either<Failures, UserClassOptionByPaidSubjectResponseEntity>>
      getUserClassOptionbyPaidSubjects();

  Future<Either<Failures, AddSelectedClassResponseEntity>> addSelectedClass(
      {List<String>? selectedClass});
}
