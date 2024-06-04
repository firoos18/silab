import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class SetUserTokenUseCase implements UseCase<Either<Failures, String>, String> {
  final AuthenticationRepository authenticationRepository;

  const SetUserTokenUseCase(this.authenticationRepository);

  @override
  Future<Either<Failures, String>> call({
    String? params,
    String? token,
    String? email,
    String? role,
    String? nim,
  }) async {
    return await authenticationRepository.setUserData(
      email: email,
      userToken: token,
      nim: nim,
    );
  }
}
