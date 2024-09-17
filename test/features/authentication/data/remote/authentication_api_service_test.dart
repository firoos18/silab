import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:silab/features/authentication/data/data_sources/remote/authentication_api_service.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/domain/entities/login_response/login_response_entity.dart';
import 'authentication_api_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late MockClient mockClient;
  late AuthenticationApiService authenticationApiService;

  setUp(() {
    mockClient = MockClient();
    authenticationApiService = AuthenticationApiService(client: mockClient);
  });

  const uri = 'http://10.4.52.201:3001/login';
  const LoginModel loginModel =
      LoginModel(nim: '2000016069', password: 'firoos18');
  final responseJson = jsonEncode({
    "status": "success",
    "message": "Login Berhasil",
    "data": {
      "accessToken":
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6InVzZXItbC1LU0JOYURVbSIsInJvbGUiOiJzdHVkZW50IiwiaWF0IjoxNzI1ODU4MDYwLCJleHAiOjE3MjU4NjE2NjB9.wWuR6Sb9qr32vvfUIYqOXFx4Q2pz1R7VG05RnPimOlU",
      "refreshToken":
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6InVzZXItbC1LU0JOYURVbSIsInJvbGUiOiJzdHVkZW50IiwiaWF0IjoxNzI1ODU4MDYwLCJleHAiOjE3MjU4NjE2NjB9.GFNwY-zD6f5BaxvuVkUx5zfArdJVfr-ZHq-xlAhWhCs"
    }
  });
  final loginResponseEntity =
      LoginResponseEntity.fromJson(jsonDecode(responseJson));

  test('should return response json when status code is 200', () async {
    when(
      mockClient.post(
        Uri.parse(uri),
        body: jsonEncode(loginModel.toJson()),
        headers: {'Content-Type': 'application/json'},
      ),
    ).thenAnswer((_) async => http.Response(responseJson, 200));

    final result = await authenticationApiService.userLogin(loginModel);

    expect(result, equals(loginResponseEntity));
    verify(mockClient.post(
      Uri.parse(uri),
      body: jsonEncode(loginModel.toJson()),
      headers: {'Content-Type': 'application/json'},
    )).called(1);
  });
}
