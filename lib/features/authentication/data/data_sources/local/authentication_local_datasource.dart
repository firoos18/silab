import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationLocalDataSource {
  final SharedPreferences _sharedPreferences;

  const AuthenticationLocalDataSource(this._sharedPreferences);

  Future<dynamic> setUserData({
    String? userToken,
    String? email,
    String? nim,
  }) async {
    if (userToken != null && email != null && nim != null) {
      await _sharedPreferences.setString("token", userToken);
      await _sharedPreferences.setString("email", email);
      await _sharedPreferences.setString("nim", nim);
    }
  }

  String? getUserToken() {
    final String? userToken = _sharedPreferences.getString("token");
    return userToken;
  }
}
