import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_response_entity.freezed.dart';
part 'reset_password_response_entity.g.dart';

@freezed
class ResetPasswordResponseEntity with _$ResetPasswordResponseEntity {
  const factory ResetPasswordResponseEntity({
    final int? status,
    final String? message,
  }) = _ResetPasswordResponseEntity;

  factory ResetPasswordResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseEntityFromJson(json);
}
