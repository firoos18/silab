import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response_entity.freezed.dart';
part 'verify_otp_response_entity.g.dart';

@freezed
class VerifyOtpResponseEntity with _$VerifyOtpResponseEntity {
  const factory VerifyOtpResponseEntity({
    final int? status,
    final String? message,
  }) = _VerifyOtpResponseEntity;

  factory VerifyOtpResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseEntityFromJson(json);
}
