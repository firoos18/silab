import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/app_confid.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/features/select_subjects/data/models/add_selected_subject_model.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_subject_response/add_selected_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_subject_response/selected_subject_response_entity.dart';
import 'package:http/http.dart' as http;

class SelectedSubjectApiService {
  final SharedPreferences _sharedPreferences;

  const SelectedSubjectApiService(this._sharedPreferences);

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
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<AddSelectedSubjectResponseEntity> addSelectedSubject(
    AddSelectedSubjectModel selectedSubjectData,
  ) async {
    final token = _sharedPreferences.getString('token');

    final response = await http.patch(
      Uri.parse('${AppConfig.shared.baseUrl}/selected-subject/'),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(selectedSubjectData.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return AddSelectedSubjectResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }
}
