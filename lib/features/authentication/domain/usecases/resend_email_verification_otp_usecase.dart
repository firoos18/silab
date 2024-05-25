import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/authentication/data/models/resend_otp_model.dart';
import 'package:silab/features/authentication/domain/entities/resend_otp_response/resend_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class ResendEmailVerificationOtpUseCase
    implements
        UseCase<Either<Failures, ResendOtpResponseEntity>, ResendOtpModel> {
  final AuthenticationRepository authenticationRepository;

  const ResendEmailVerificationOtpUseCase(this.authenticationRepository);

  @override
  Future<Either<Failures, ResendOtpResponseEntity>> call(
      {ResendOtpModel? params}) async {
    return await authenticationRepository.resendEmailVerificationOtp(params!);
  }
}
