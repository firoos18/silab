import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/classes/domain/entities/classes_details_response/classes_details_response_entity.dart';
import 'package:silab/features/classes/domain/repository/class_repository.dart';

class GetUserSelectedClassesDetailsUseCase
    implements
        UseCase<Either<Failures, ClassesDetailsResponseEntity>, List<String>?> {
  final ClassRepository classRepository;

  const GetUserSelectedClassesDetailsUseCase(this.classRepository);

  @override
  Future<Either<Failures, ClassesDetailsResponseEntity>> call(
      {List<String>? params}) async {
    return classRepository.getUserSelectedClassesDetails(classes: params);
  }
}
