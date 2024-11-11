import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/authentication/domain/entities/login_data/login_data_entity.dart';

part 'login_response_entity.freezed.dart';
part 'login_response_entity.g.dart';

@freezed
class LoginResponseEntity with _$LoginResponseEntity {
  const factory LoginResponseEntity({
    final String? status,
    final String? message,
    final LoginDataEntity? data,
  }) = _LoginResponseEntity;

  factory LoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseEntityFromJson(json);
}
