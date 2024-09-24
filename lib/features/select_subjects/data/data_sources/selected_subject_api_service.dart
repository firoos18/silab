import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/app_config.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_class_response/add_selected_class_response_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_subject_response/add_selected_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_subject_response/selected_subject_response_entity.dart';
import 'package:http/http.dart' as http;
import 'package:silab/features/select_subjects/domain/entities/user_class_option_by_paid_subject_response/user_class_option_by_paid_subject_response_entity.dart';

class SelectedSubjectApiService {
  final SharedPreferences _sharedPreferences;

  const SelectedSubjectApiService(this._sharedPreferences);

  Future<SelectedSubjectResponseEntity> getUserSelectedSubject() async {
    try {
      final token = _sharedPreferences.getString('accessToken');

      final response = await http.get(
        Uri.parse('${AppConfig.shared.baseUrl}/activations/me'),
        headers: {
          'Authorization': "Bearer $token",
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return SelectedSubjectResponseEntity.fromJson(data);
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

  Future<AddSelectedSubjectResponseEntity> addUserSelectedSubject(
    List<String>? subjects,
  ) async {
    try {
      final token = _sharedPreferences.getString('accessToken');

      final requestBody = {"subjectIds": subjects};

      final response = await http.post(
        Uri.parse('${AppConfig.shared.baseUrl}/activations'),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 201) {
        final data = jsonDecode(response.body);
        return AddSelectedSubjectResponseEntity.fromJson(data);
      } else if (response.statusCode == 504) {
        throw RequestErrorException('An Internal Server Error Occurred');
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

  Future<UserClassOptionByPaidSubjectResponseEntity>
      getUserClassOptionbyPaidSubjects() async {
    try {
      final token = _sharedPreferences.getString('accessToken');

      final response = await http.get(
        Uri.parse('${AppConfig.shared.baseUrl}/registrations/select-class'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return UserClassOptionByPaidSubjectResponseEntity.fromJson(data);
      } else if (response.statusCode == 504) {
        throw RequestErrorException('An Internal Server Error Occurred');
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

  Future<AddSelectedClassResponseEntity> addSelectedClass({
    List<String>? selectedClass,
  }) async {
    try {
      final token = _sharedPreferences.getString('accessToken');

      final requestBody = {"practicum_class": selectedClass};

      final response = await http.post(
        Uri.parse('${AppConfig.shared.baseUrl}/registrations'),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 201) {
        final data = jsonDecode(response.body);
        return AddSelectedClassResponseEntity.fromJson(data);
      } else if (response.statusCode == 504) {
        throw RequestErrorException('An Internal Server Error Occurred');
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
