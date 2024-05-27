import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/authentication/domain/entities/send_otp/send_otp_entity.dart';

part 'send_reset_password_otp_response_entity.freezed.dart';
part 'send_reset_password_otp_response_entity.g.dart';

@freezed
class SendResetPasswordOtpResponseEntity
    with _$SendResetPasswordOtpResponseEntity {
  const factory SendResetPasswordOtpResponseEntity({
    final int? status,
    final String? message,
    final SendOtpEntity? data,
  }) = _SendResetPasswordOtpResponseEntity;

  factory SendResetPasswordOtpResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      _$SendResetPasswordOtpResponseEntityFromJson(json);
}
