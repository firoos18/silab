import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/select_subjects/domain/repository/selected_subject_repository.dart';

class GetPaymentStatusUseCase
    implements UseCase<Either<Failures, Map<String, dynamic>>, Null> {
  final SelectedSubjectRepository selectedSubjectRepository;

  const GetPaymentStatusUseCase(this.selectedSubjectRepository);

  @override
  Future<Either<Failures, Map<String, dynamic>>> call({Null params}) async {
    return selectedSubjectRepository.getUserPaymentStatus();
  }
}
