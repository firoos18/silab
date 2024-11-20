import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_entity.freezed.dart';
part 'attendance_entity.g.dart';

@freezed
class AttendanceEntity with _$AttendanceEntity {
  const factory AttendanceEntity({
    final String? status,
    final String? message,
  }) = _AttendanceEntity;

  factory AttendanceEntity.fromJson(Map<String, dynamic> json) =>
      _$AttendanceEntityFromJson(json);
}
