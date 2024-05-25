import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_entity.freezed.dart';
part 'send_otp_entity.g.dart';

@freezed
class SendOtpEntity with _$SendOtpEntity {
  const factory SendOtpEntity({
    final String? userId,
    final String? email,
  }) = _SendOtpEntity;

  factory SendOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$SendOtpEntityFromJson(json);
}
