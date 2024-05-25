import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_model.g.dart';

@JsonSerializable()
class VerifyOtpModel {
  final String? userId;
  final String? otp;

  const VerifyOtpModel({this.otp, this.userId});

  Map<String, dynamic> toJson() => _$VerifyOtpModelToJson(this);
}
