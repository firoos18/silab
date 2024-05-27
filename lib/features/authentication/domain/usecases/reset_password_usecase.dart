import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/authentication/data/models/reset_password_model.dart';
import 'package:silab/features/authentication/domain/entities/reset_password/reset_password_response_entity.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class ResetPasswordUseCase
    implements
        UseCase<Either<Failures, ResetPasswordResponseEntity>,
            ResetPasswordModel> {
  final AuthenticationRepository authenticationRepository;

  ResetPasswordUseCase(this.authenticationRepository);

  @override
  Future<Either<Failures, ResetPasswordResponseEntity>> call(
      {ResetPasswordModel? params}) async {
    return await authenticationRepository.resetPassword(params!);
  }
}
