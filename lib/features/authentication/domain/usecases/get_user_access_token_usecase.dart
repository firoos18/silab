import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class GetUserAccessTokenUsecase
    implements UseCase<Either<Failures, String>, Null> {
  final AuthenticationRepository authenticationRepository;

  const GetUserAccessTokenUsecase(this.authenticationRepository);

  @override
  Future<Either<Failures, String>> call({Null params}) async {
    return authenticationRepository.getUserAccessToken();
  }
}
