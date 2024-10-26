import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/app_config.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/features/schedule/domain/entities/schedule_response/schedule_response_entity.dart';
import 'package:http/http.dart' as http;

class ScheduleApiService {
  final SharedPreferences _sharedPreferences;

  const ScheduleApiService(this._sharedPreferences);

  Future<ScheduleResponseEntity> getUserSchedule() async {
    try {
      final token = _sharedPreferences.getString('accessToken');

      final response = await http.get(
        Uri.parse('${AppConfig.shared.baseUrl}/users/schedules/me'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return ScheduleResponseEntity.fromJson(data);
      } else if (response.statusCode == 401) {
        final data = jsonDecode(response.body);
        throw RequestErrorException(data['message']);
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
