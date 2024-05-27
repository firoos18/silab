import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_reset_password_otp_model.g.dart';

@JsonSerializable()
class VerifyResetPasswordOtpModel {
  final String? userId;
  final String? otp;

  VerifyResetPasswordOtpModel({this.otp, this.userId});

  Map<String, dynamic> toJson() => _$VerifyResetPasswordOtpModelToJson(this);
}
