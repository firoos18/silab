import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/domain/entities/login_response/login_response_entity.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class UserLoginUsecase
    implements UseCase<Either<Failures, LoginResponseEntity>, LoginModel?> {
  final AuthenticationRepository authenticationRepository;

  const UserLoginUsecase(this.authenticationRepository);

  @override
  Future<Either<Failures, LoginResponseEntity>> call(
      {LoginModel? params}) async {
    return authenticationRepository.userLogin(loginData: params);
  }
}
