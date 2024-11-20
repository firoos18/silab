import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:silab/app_config.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/domain/entities/login_response/login_response_entity.dart';
import 'package:http/http.dart' as http;

class AuthenticationApiService {
  final http.Client client;

  AuthenticationApiService({required this.client});

  Future<LoginResponseEntity> userLogin(
    LoginModel loginData,
  ) async {
    try {
      final response = await client.post(
        Uri.parse('${AppConfig.shared.baseUrl}/login'),
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
    } on SocketException catch (e) {
      throw RequestErrorException(e.message);
    } on TimeoutException catch (e) {
      throw RequestErrorException(e.message!);
    } on http.ClientException {
      throw RequestErrorException(
          "Client error, check your internet connections.");
    } on HttpException {
      throw RequestErrorException(
          "Http error, check your internet connections");
    }
  }
}
