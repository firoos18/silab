import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail_entity.freezed.dart';
part 'user_detail_entity.g.dart';

@freezed
class UserDetailEntity with _$UserDetailEntity {
  const factory UserDetailEntity({
    final String? id,
    final String? email,
    final String? nim,
    final String? fullname,
    final List<String>? role,
    final bool? paid,
  }) = _UserDetailEntity;

  factory UserDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$UserDetailEntityFromJson(json);
}
