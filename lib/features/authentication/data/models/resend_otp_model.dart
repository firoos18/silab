import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_otp_model.g.dart';

@JsonSerializable()
class ResendOtpModel {
  final String? userId;
  final String? email;

  ResendOtpModel({this.email, this.userId});

  Map<String, dynamic> toJson() => _$ResendOtpModelToJson(this);
}
