import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/app_config.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/features/user_details/domain/entities/user_detail_response/user_detail_response_entity.dart';
import 'package:http/http.dart' as http;

class UserApiService {
  final SharedPreferences _sharedPreferences;

  const UserApiService(this._sharedPreferences);

  Future<UserDetailResponseEntity> getUserDetails() async {
    try {
      final token = _sharedPreferences.getString("accessToken");

      final response = await http.get(
        Uri.parse('${AppConfig.shared.baseUrl}/user-profiles'),
        headers: {"Authorization": "Bearer $token"},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return UserDetailResponseEntity.fromJson(data);
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
