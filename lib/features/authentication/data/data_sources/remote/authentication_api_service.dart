import 'dart:convert';
import 'package:silab/app_config.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/domain/entities/login_response/login_response_entity.dart';
import 'package:http/http.dart' as http;

class AuthenticationApiService {
  Future<LoginResponseEntity> userLogin(
    LoginModel loginData,
  ) async {
    final response = await http.post(
      Uri.parse('${AppConfig.shared.baseUrl}/login'),
      headers: {
        'Content-Type': "application/json",
      },
      body: jsonEncode(loginData.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return LoginResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }
}
