import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/authentication/domain/entities/send_otp/send_otp_entity.dart';

part 'resend_otp_response_entity.freezed.dart';
part 'resend_otp_response_entity.g.dart';

@freezed
class ResendOtpResponseEntity with _$ResendOtpResponseEntity {
  const factory ResendOtpResponseEntity({
    final int? status,
    final String? message,
    final SendOtpEntity? data,
  }) = _ResendOtpResponseEntity;

  factory ResendOtpResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ResendOtpResponseEntityFromJson(json);
}
