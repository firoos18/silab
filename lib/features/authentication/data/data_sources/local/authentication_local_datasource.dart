import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AuthenticationLocalDataSource {
  final SharedPreferences _sharedPreferences;

  const AuthenticationLocalDataSource(this._sharedPreferences);

  Future<void> setUserTokens({
    String? accessToken,
    String? refreshToken,
  }) async {
    if (accessToken != null && refreshToken != null) {
      await _sharedPreferences.setString('accessToken', accessToken);
      await _sharedPreferences.setString('refreshToken', refreshToken);
    }
  }

  String? getUserAccessToken() {
    return _sharedPreferences.getString('accessToken');
  }

  String? getUserId() {
    final String? accessToken = _sharedPreferences.getString('accessToken');

    if (accessToken != null) {
      return JwtDecoder.decode(accessToken)['id'];
    } else {
      return null;
    }
  }

  String? getUserRole() {
    final String? accessToken = _sharedPreferences.getString('accessToken');

    if (accessToken != null) {
      return JwtDecoder.decode(accessToken)['role'];
    } else {
      return null;
    }
  }
}
