import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/data/models/register_model.dart';
import 'package:silab/features/authentication/data/models/resend_otp_model.dart';
import 'package:silab/features/authentication/data/models/reset_password_model.dart';
import 'package:silab/features/authentication/data/models/send_reset_password_otp_model.dart';
import 'package:silab/features/authentication/data/models/verify_otp_model.dart';
import 'package:silab/features/authentication/data/models/verify_reset_password_otp_model.dart';
import 'package:silab/features/authentication/domain/entities/login_response/login_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/register_response/register_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/resend_otp_response/resend_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/reset_password/reset_password_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/send_reset_password_otp/send_reset_password_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/verify_otp/verify_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/verify_reset_password_otp/verify_reset_password_otp_response_entity.dart';

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

  Future<Either<Failures, bool>> userLogOut();

  Future<Either<Failures, String>> setUserData({
    String? userToken,
    String? email,
    String? nim,
  });

  Either<Failures, String> getUserToken();

  Future<Either<Failures, ResetPasswordResponseEntity>> resetPassword(
    ResetPasswordModel resetPasswordData,
  );

  Future<Either<Failures, SendResetPasswordOtpResponseEntity>>
      sendResetPasswordOtp(
    SendResetPasswordOtpModel sendResetPasswordOtpData,
  );

  Future<Either<Failures, SendResetPasswordOtpResponseEntity>>
      resendResetPasswordOtp(
    SendResetPasswordOtpModel sendResetPasswordOtpData,
  );

  Future<Either<Failures, VerifyResetPasswordOtpResponseEntity>>
      verifyResetPasswordOtp(
    VerifyResetPasswordOtpModel verifyResetPasswordOtpData,
  );
}
