import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class SetUserTokenUseCase implements UseCase<Either<Failures, String>, String> {
  final AuthenticationRepository authenticationRepository;

  const SetUserTokenUseCase(this.authenticationRepository);

  @override
  Future<Either<Failures, String>> call({String? params}) async {
    return await authenticationRepository.setUserToken(params);
  }
}
