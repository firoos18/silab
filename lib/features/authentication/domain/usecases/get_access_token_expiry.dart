import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class GetAccessTokenExpiry implements UseCase<Either<Failures, int>, Null> {
  final AuthenticationRepository authenticationRepository;

  const GetAccessTokenExpiry(this.authenticationRepository);

  @override
  Future<Either<Failures, int>> call({Null params}) async {
    return authenticationRepository.getAccessTokenExpiry();
  }
}
