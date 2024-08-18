import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:silab/app_config.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/data/models/register_model.dart';
import 'package:silab/features/authentication/data/models/resend_otp_model.dart';
import 'package:silab/features/authentication/data/models/reset_password_model.dart';
import 'package:silab/features/authentication/data/models/send_reset_password_otp_model.dart';
import 'package:silab/features/authentication/data/models/verify_otp_model.dart';
import 'package:silab/features/authentication/data/models/verify_reset_password_otp_model.dart';
import 'package:silab/features/authentication/domain/entities/login_response/login_response_entity.dart';
import 'package:http/http.dart' as http;
import 'package:silab/features/authentication/domain/entities/register_response/register_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/resend_otp_response/resend_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/reset_password/reset_password_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/send_reset_password_otp/send_reset_password_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/verify_otp/verify_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/verify_reset_password_otp/verify_reset_password_otp_response_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthenticationApiService {
  final FirebaseMessaging _firebaseMessaging;
  final Supabase _supabase;

  const AuthenticationApiService(this._firebaseMessaging, this._supabase);

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
      await setupFCM(nim: data['data']['nim']);
      return LoginResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
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
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<VerifyOtpResponseEntity> verifyOtp(
      VerifyOtpModel verifyOtpData) async {
    final response = await http.post(
      Uri.parse("${AppConfig.shared.baseUrl}/auth/verify-otp"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(verifyOtpData.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return VerifyOtpResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<ResendOtpResponseEntity> resendEmailVerificationOtp(
      ResendOtpModel resendOtpData) async {
    final response = await http.post(
      Uri.parse('${AppConfig.shared.baseUrl}/auth/resend-otp'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(resendOtpData.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return ResendOtpResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<ResetPasswordResponseEntity> resetPassword(
      ResetPasswordModel resetPasswordData) async {
    final response = await http.post(
        Uri.parse("${AppConfig.shared.baseUrl}/auth/reset-password"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(resetPasswordData.toJson()));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return ResetPasswordResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<SendResetPasswordOtpResponseEntity> sendResetPasswordOtp(
      SendResetPasswordOtpModel sendResetPasswordOtpData) async {
    final response = await http.post(
        Uri.parse("${AppConfig.shared.baseUrl}/auth/send-reset-password-otp"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(sendResetPasswordOtpData.toJson()));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return SendResetPasswordOtpResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<SendResetPasswordOtpResponseEntity> resendResetPasswordOtp(
      SendResetPasswordOtpModel sendResetPasswordOtpData) async {
    final response = await http.post(
        Uri.parse("${AppConfig.shared.baseUrl}/auth/resend-reset-password-otp"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(sendResetPasswordOtpData.toJson()));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return SendResetPasswordOtpResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<VerifyResetPasswordOtpResponseEntity> verifyResetPasswordOtp(
      VerifyResetPasswordOtpModel verifyResetPasswordOtpData) async {
    final response = await http.post(
      Uri.parse("${AppConfig.shared.baseUrl}/auth/verify-reset-password-otp"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(verifyResetPasswordOtpData.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return VerifyResetPasswordOtpResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<void> setupFCM({String? nim}) async {
    await _firebaseMessaging.requestPermission();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {});
    String? token = await _firebaseMessaging.getToken();

    if (token != null) {
      await _supabase.client
          .from('users')
          .update({'fcm_token': token}).eq('nim', nim!);
    }

    _firebaseMessaging.onTokenRefresh.listen((newToken) async {
      await _supabase.client.from('users').update({'fcm_token': token});
    });
  }
}
