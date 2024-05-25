import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_data_entity.freezed.dart';
part 'register_data_entity.g.dart';

@freezed
class RegisterDataEntity with _$RegisterDataEntity {
  const factory RegisterDataEntity({
    final String? userId,
    final String? email,
  }) = _RegisterDataEntity;

  factory RegisterDataEntity.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataEntityFromJson(json);
}
