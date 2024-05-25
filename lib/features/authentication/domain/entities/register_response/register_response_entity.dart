import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/authentication/domain/entities/send_otp/send_otp_entity.dart';

part 'register_response_entity.freezed.dart';
part 'register_response_entity.g.dart';

@freezed
class RegisterResponseEntity with _$RegisterResponseEntity {
  const factory RegisterResponseEntity({
    final int? status,
    final String? message,
    final SendOtpEntity? data,
  }) = _RegisterDataEntity;

  factory RegisterResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseEntityFromJson(json);
}
