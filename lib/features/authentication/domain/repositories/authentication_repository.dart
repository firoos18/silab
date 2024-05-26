import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/data/models/register_model.dart';
import 'package:silab/features/authentication/data/models/resend_otp_model.dart';
import 'package:silab/features/authentication/data/models/verify_otp_model.dart';
import 'package:silab/features/authentication/domain/entities/login_response/login_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/register_response/register_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/resend_otp_response/resend_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/verify_otp/verify_otp_response_entity.dart';

abstract class AuthenticationRepository {
  Future<Either<Failures, LoginResponseEntity>> userLogin(
    LoginModel loginData,
  );

  Future<Either<Failures, RegisterResponseEntity>> userRegister(
    RegisterModel registerData,
  );

  Future<Either<Failures, VerifyOtpResponseEntity>> verifyOtp(
      VerifyOtpModel verifyOtpData);

  Future<Either<Failures, ResendOtpResponseEntity>> resendEmailVerificationOtp(
    ResendOtpModel resendOtpData,
  );

  Future<Either<Failures, String>> setUserToken(String? userToken);

  Either<Failures, String> getUserToken();
}
