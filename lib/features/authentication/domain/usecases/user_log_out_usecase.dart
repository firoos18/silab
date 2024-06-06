import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class UserLogOutUseCase implements UseCase<Either<Failures, bool>, Null> {
  final AuthenticationRepository authenticationRepository;

  const UserLogOutUseCase(this.authenticationRepository);

  @override
  Future<Either<Failures, bool>> call({Null params}) async {
    return await authenticationRepository.userLogOut();
  }
}
