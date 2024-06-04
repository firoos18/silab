import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/classes/domain/entities/class_response/class_response_entity.dart';
import 'package:silab/features/classes/domain/repository/class_repository.dart';

class GetClassByIdUseCase
    implements UseCase<Either<Failures, ClassResponseEntity>, String?> {
  final ClassRepository classRepository;

  const GetClassByIdUseCase(this.classRepository);

  @override
  Future<Either<Failures, ClassResponseEntity>> call({String? params}) async {
    return await classRepository.getClassById(params);
  }
}
