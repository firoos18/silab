import 'dart:convert';

import 'package:silab/app_confid.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/data/models/register_model.dart';
import 'package:silab/features/authentication/data/models/resend_otp_model.dart';
import 'package:silab/features/authentication/data/models/verify_otp_model.dart';
import 'package:silab/features/authentication/domain/entities/login_response/login_response_entity.dart';
import 'package:http/http.dart' as http;
import 'package:silab/features/authentication/domain/entities/register_response/register_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/resend_otp_response/resend_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/verify_otp/verify_otp_response_entity.dart';

class AuthenticationApiService {
  Future<LoginResponseEntity> userLogin(
    LoginModel loginData,
  ) async {
    final response = await http.post(
      Uri.parse('${AppConfig.shared.baseUrl}/auth/login'),
      headers: {
        'Content-Type': "application/json",
      },
      body: jsonEncode(loginData.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return LoginResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<RegisterResponseEntity> userRegister(
    RegisterModel registerData,
  ) async {
    final response = await http.post(
      Uri.parse("${AppConfig.shared.baseUrl}/auth/register"),
      headers: {'Content-Type': "application/json"},
      body: jsonEncode(registerData.toJson()),
    );

    if (response.statusCode == 201 || response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return RegisterResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<VerifyOtpResponseEntity> verifyOtp(
      VerifyOtpModel verifyOtpData) async {
    final response = await http.post(
      Uri.parse("${AppConfig.shared.baseUrl}/auth/verifyOtp"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(verifyOtpData.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return VerifyOtpResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<ResendOtpResponseEntity> resendEmailVerificationOtp(
      ResendOtpModel resendOtpData) async {
    final response = await http.post(
      Uri.parse('${AppConfig.shared.baseUrl}/auth/resendOtp'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(resendOtpData.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return ResendOtpResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }
}
