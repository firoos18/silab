import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_reset_password_otp_model.g.dart';

@JsonSerializable()
class SendResetPasswordOtpModel {
  final String? email;
  final String? userId;

  SendResetPasswordOtpModel({this.email, this.userId});

  Map<String, dynamic> toJson() => _$SendResetPasswordOtpModelToJson(this);
}
