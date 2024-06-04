import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/app_confid.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/features/subjects/domain/entities/subject_response/subject_response_entity.dart';
import 'package:http/http.dart' as http;

class SubjectApiService {
  final SharedPreferences _sharedPreferences;

  const SubjectApiService(this._sharedPreferences);

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
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }
}
