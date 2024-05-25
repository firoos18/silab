import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/authentication/data/models/register_model.dart';
import 'package:silab/features/authentication/domain/entities/register_response/register_response_entity.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class UserRegisterUseCase
    implements
        UseCase<Either<Failures, RegisterResponseEntity>, RegisterModel> {
  final AuthenticationRepository authenticationRepository;

  const UserRegisterUseCase(this.authenticationRepository);

  @override
  Future<Either<Failures, RegisterResponseEntity>> call({
    RegisterModel? params,
  }) async {
    return await authenticationRepository.userRegister(params!);
  }
}
