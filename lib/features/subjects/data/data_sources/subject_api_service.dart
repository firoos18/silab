import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/app_config.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/features/subjects/data/models/user_selected_subjects/user_selected_subjects_model.dart';
import 'package:silab/features/subjects/domain/entities/subject_list_response/subject_list_response_entity.dart';
import 'package:silab/features/subjects/domain/entities/subject_response/subject_response_entity.dart';
import 'package:http/http.dart' as http;

class SubjectApiService {
  final SharedPreferences _sharedPreferences;

  const SubjectApiService(this._sharedPreferences);

  Future<SubjectListResponseEntity> getSubjectList() async {
    try {
      final token = _sharedPreferences.getString('accessToken');

      final response = await http.get(
        Uri.parse(
          '${AppConfig.shared.baseUrl}/subjects/',
        ),
        headers: {
          'Authorization': "Bearer $token",
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return SubjectListResponseEntity.fromJson(data);
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

  Future<SubjectResponseEntity> getSubjectDetails(String? subjectId) async {
    final token = _sharedPreferences.getString('token');

    final response = await http.get(
      Uri.parse('${AppConfig.shared.baseUrl}/subject/$subjectId'),
      headers: {
        'Authorization': "Bearer $token",
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return SubjectResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<SubjectListResponseEntity> getUserSelectedSubjectsdetails(
      {UserSelectedSubjectsModel? subjects}) async {
    final token = _sharedPreferences.getString('token');

    final response = await http.post(
      Uri.parse(
        '${AppConfig.shared.baseUrl}/subject/details',
      ),
      headers: {
        'Authorization': "Bearer $token",
        'Content-Type': 'application/json',
      },
      body: jsonEncode(subjects!.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return SubjectListResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }
}
