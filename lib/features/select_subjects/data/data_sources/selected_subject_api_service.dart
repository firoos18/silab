import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/app_config.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_class_response/add_selected_class_response_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_subject_response/add_selected_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_subject_response/selected_subject_response_entity.dart';
import 'package:http/http.dart' as http;
import 'package:supabase_flutter/supabase_flutter.dart';

class SelectedSubjectApiService {
  final SharedPreferences _sharedPreferences;
  final Supabase supabase;

  const SelectedSubjectApiService(this._sharedPreferences, this.supabase);

  Future<SelectedSubjectResponseEntity> getSelectedSubjectByNim(
    String? nim,
  ) async {
    final nim = _sharedPreferences.getString('nim');
    final token = _sharedPreferences.getString('token');

    final response = await http.get(
      Uri.parse('${AppConfig.shared.baseUrl}/selected-subject/$nim'),
      headers: {
        'Authorization': "Bearer $token",
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return SelectedSubjectResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<AddSelectedSubjectResponseEntity> addSelectedSubject(
    List<String>? subjects,
  ) async {
    final token = _sharedPreferences.getString('token');
    final nim = _sharedPreferences.getString('nim');
    final requestBody = {
      "nim": nim,
      "subjects": subjects,
    };

    final response = await http.patch(
      Uri.parse('${AppConfig.shared.baseUrl}/selected-subject/'),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return AddSelectedSubjectResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<AddSelectedClassResponseEntity> addSelectedClass({
    Map<String, dynamic>? selectedClass,
  }) async {
    final token = _sharedPreferences.getString('token');
    final nim = _sharedPreferences.getString('nim');

    final requestBody = {
      "nim": nim,
      "selectedClasses": selectedClass,
    };

    final response = await http.patch(
      Uri.parse('${AppConfig.shared.baseUrl}/class/register'),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return AddSelectedClassResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException('An Internal Server Error Occurred');
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }
}
