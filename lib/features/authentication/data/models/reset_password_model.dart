import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_model.g.dart';

@JsonSerializable()
class ResetPasswordModel {
  final String? userId;
  final String? newPassword;
  final String? repeatNewPassword;

  ResetPasswordModel({this.newPassword, this.repeatNewPassword, this.userId});

  Map<String, dynamic> toJson() => _$ResetPasswordModelToJson(this);
}
