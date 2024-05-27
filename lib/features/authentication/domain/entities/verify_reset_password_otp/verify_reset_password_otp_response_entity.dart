import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_reset_password_otp_response_entity.freezed.dart';
part 'verify_reset_password_otp_response_entity.g.dart';

@freezed
class VerifyResetPasswordOtpResponseEntity
    with _$VerifyResetPasswordOtpResponseEntity {
  const factory VerifyResetPasswordOtpResponseEntity({
    final int? status,
    final String? message,
  }) = _VerifyResetPasswordOtpResponseEntity;

  factory VerifyResetPasswordOtpResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      _$VerifyResetPasswordOtpResponseEntityFromJson(json);
}
