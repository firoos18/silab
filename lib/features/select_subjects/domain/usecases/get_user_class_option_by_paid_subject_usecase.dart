import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/select_subjects/domain/entities/user_class_option_by_paid_subject_response/user_class_option_by_paid_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/repository/selected_subject_repository.dart';

class GetUserClassOptionByPaidSubjectUsecase
    implements
        UseCase<Either<Failures, UserClassOptionByPaidSubjectResponseEntity>,
            Null> {
  final SelectedSubjectRepository selectedSubjectRepository;

  const GetUserClassOptionByPaidSubjectUsecase(this.selectedSubjectRepository);

  @override
  Future<Either<Failures, UserClassOptionByPaidSubjectResponseEntity>> call(
      {Null params}) async {
    return await selectedSubjectRepository.getUserClassOptionbyPaidSubjects();
  }
}
