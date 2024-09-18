import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/domain/entities/login_response/login_response_entity.dart';

abstract class AuthenticationRepository {
  Future<Either<Failures, LoginResponseEntity>> userLogin({
    LoginModel? loginData,
  });

  Future<Either<Failures, String>> setUserTokens({
    String? accessToken,
    String? refreshToken,
  });

  Either<Failures, String> getUserAccessToken();

  Either<Failures, String> getUserId();

  Either<Failures, String> getUserRole();

  Either<Failures, String> getAccessTokenExpiry();
}
