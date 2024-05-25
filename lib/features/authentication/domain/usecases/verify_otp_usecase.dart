import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/authentication/data/models/verify_otp_model.dart';
import 'package:silab/features/authentication/domain/entities/verify_otp/verify_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class VerifyOtpUseCase
    implements
        UseCase<Either<Failures, VerifyOtpResponseEntity>, VerifyOtpModel> {
  final AuthenticationRepository authenticationRepository;

  const VerifyOtpUseCase(this.authenticationRepository);

  @override
  Future<Either<Failures, VerifyOtpResponseEntity>> call(
      {VerifyOtpModel? params}) async {
    return await authenticationRepository.verifyOtp(params!);
  }
}
