import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/app_config.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/features/announcement/domain/entities/announcement_list_response/announcement_list_response_entity.dart';
import 'package:http/http.dart' as http;
import 'package:silab/features/announcement/domain/entities/announcement_response/announcement_response_entity.dart';

class AnnouncementApiService {
  final SharedPreferences _sharedPreferences;

  const AnnouncementApiService(this._sharedPreferences);

  Future<AnnouncementListResponseEntity> getAnnouncementList() async {
    final token = _sharedPreferences.getString('token');

    final response = await http.get(
      Uri.parse('${AppConfig.shared.baseUrl}/announcement'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return AnnouncementListResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException(response.body);
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<AnnouncementResponseEntity> getAnnouncement() async {
    final token = _sharedPreferences.getString('token');

    final response = await http.get(
      Uri.parse('${AppConfig.shared.baseUrl}/announcement'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return AnnouncementResponseEntity.fromJson(data);
    } else if (response.statusCode == 504) {
      throw RequestErrorException(response.body);
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }
}
