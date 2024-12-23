import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/app_config.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/features/classes/domain/entities/attendance/attendance_entity.dart';
import 'package:silab/features/classes/domain/entities/class_list_response/classes_response_entity.dart';
import 'package:http/http.dart' as http;
import 'package:silab/features/classes/domain/entities/meetings_response/meetings_response_entity.dart';

class ClassesApiService {
  final SharedPreferences _sharedPreferences;

  const ClassesApiService(this._sharedPreferences);

  Future<ClassesResponseEntity> getUserRegisteredClasses() async {
    try {
      final token = _sharedPreferences.getString('accessToken');

      final response = await http.get(
        Uri.parse('${AppConfig.shared.baseUrl}/registrations/me'),
        headers: {
          'Authorization': "Bearer $token",
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return ClassesResponseEntity.fromJson(data);
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
    } catch (e) {
      throw RequestErrorException("Unknown error occurred: ${e.toString()}");
    }
  }

  Future<MeetingsResponseEntity> getUserMeetingsData({
    String? classId,
  }) async {
    try {
      final token = _sharedPreferences.getString('accessToken');

      final response = await http.get(
        Uri.parse(
            '${AppConfig.shared.baseUrl}/subject/classes/$classId/meetings/me'),
        headers: {
          'Authorization': "Bearer $token",
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return MeetingsResponseEntity.fromJson(data);
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
    } catch (e) {
      throw RequestErrorException("Unknown error occurred: ${e.toString()}");
    }
  }

  Future<AttendanceEntity> addUserAttendance({
    String? classId,
    String? meetingId,
    String? meetingToken,
  }) async {
    try {
      final token = _sharedPreferences.getString('accessToken');

      final response = await http.post(
        Uri.parse(
            '${AppConfig.shared.baseUrl}/subject/classes/$classId/meetings/$meetingId/attendances'),
        headers: {
          'Authorization': "Bearer $token",
          'Content-Type': 'application/json'
        },
        body: jsonEncode({
          'token': meetingToken,
        }),
      );

      if (response.statusCode == 201) {
        final data = jsonDecode(response.body);
        return AttendanceEntity.fromJson(data);
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
