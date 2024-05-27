import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/authentication/data/models/verify_reset_password_otp_model.dart';
import 'package:silab/features/authentication/domain/entities/verify_reset_password_otp/verify_reset_password_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class VerifyResetPasswordOtpUseCase
    implements
        UseCase<Either<Failures, VerifyResetPasswordOtpResponseEntity>,
            VerifyResetPasswordOtpModel> {
  final AuthenticationRepository authenticationRepository;

  const VerifyResetPasswordOtpUseCase(this.authenticationRepository);

  @override
  Future<Either<Failures, VerifyResetPasswordOtpResponseEntity>> call(
      {VerifyResetPasswordOtpModel? params}) async {
    return await authenticationRepository.verifyResetPasswordOtp(params!);
  }
}
