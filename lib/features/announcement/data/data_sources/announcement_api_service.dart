import 'dart:async';
import 'dart:convert';
import 'dart:io';
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
    try {
      final token = _sharedPreferences.getString('accessToken');

      final response = await http.get(
        Uri.parse('${AppConfig.shared.baseUrl}/announcements'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return AnnouncementListResponseEntity.fromJson(data);
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

  Future<AnnouncementResponseEntity> getAnnouncement({String? id}) async {
    try {
      final token = _sharedPreferences.getString('accessToken');

      final response = await http.get(
        Uri.parse('${AppConfig.shared.baseUrl}/announcements/$id'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return AnnouncementResponseEntity.fromJson(data);
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
