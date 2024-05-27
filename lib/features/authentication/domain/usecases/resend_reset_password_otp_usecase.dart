import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/authentication/data/models/send_reset_password_otp_model.dart';
import 'package:silab/features/authentication/domain/entities/send_reset_password_otp/send_reset_password_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class ResendResetPasswordOtpUseCase
    implements
        UseCase<Either<Failures, SendResetPasswordOtpResponseEntity>,
            SendResetPasswordOtpModel> {
  final AuthenticationRepository authenticationRepository;

  const ResendResetPasswordOtpUseCase(this.authenticationRepository);

  @override
  Future<Either<Failures, SendResetPasswordOtpResponseEntity>> call(
      {SendResetPasswordOtpModel? params}) async {
    return await authenticationRepository.resendResetPasswordOtp(params!);
  }
}
