import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/classes/domain/entities/class_list_response/classes_response_entity.dart';
import 'package:silab/features/classes/domain/repository/class_repository.dart';

class GetClassListUseCase
    implements UseCase<Either<Failures, ClassesResponseEntity>, Null> {
  final ClassRepository classRepository;

  const GetClassListUseCase(this.classRepository);

  @override
  Future<Either<Failures, ClassesResponseEntity>> call({Null params}) async {
    return await classRepository.getClasses();
  }
}
