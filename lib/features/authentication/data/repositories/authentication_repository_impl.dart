import 'package:either_dart/either.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/authentication/data/data_sources/local/authentication_local_datasource.dart';
import 'package:silab/features/authentication/data/data_sources/remote/authentication_api_service.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/domain/entities/login_response/login_response_entity.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationApiService _authenticationApiService;
  final AuthenticationLocalDataSource _authenticationLocalDataSource;

  const AuthenticationRepositoryImpl(
    this._authenticationApiService,
    this._authenticationLocalDataSource,
  );

  @override
  Future<Either<Failures, LoginResponseEntity>> userLogin(
      {LoginModel? loginData}) async {
    try {
      if (loginData != null) {
        final result = await _authenticationApiService.userLogin(loginData);

        if (result.data != null &&
            result.data!.accessToken != null &&
            result.data!.refreshToken != null) {
          await setUserTokens(
            refreshToken: result.data!.refreshToken,
            accessToken: result.data!.accessToken,
          );

          return Right(result);
        } else {
          return Left(RequestFailures('An Error Occurred!'));
        }
      } else {
        return Left(RequestFailures('An Error Occurred!'));
      }
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Either<Failures, String> getUserAccessToken() {
    final String? userAccessToken =
        _authenticationLocalDataSource.getUserAccessToken();

    if (userAccessToken != null) {
      return Right(userAccessToken);
    } else {
      return Left(RequestFailures('An Error Occurred!'));
    }
  }

  @override
  Either<Failures, String> getUserId() {
    try {
      final String? userId = _authenticationLocalDataSource.getUserId();

      if (userId != null) {
        return Right(userId);
      } else {
        return Left(RequestFailures('An Error Occurred!'));
      }
    } catch (e) {
      return Left(RequestFailures('An Error Occurred!'));
    }
  }

  @override
  Either<Failures, String> getUserRole() {
    try {
      final String? userRole = _authenticationLocalDataSource.getUserRole();

      if (userRole != null) {
        return Right(userRole);
      } else {
        return Left(RequestFailures('An Error Occurred!'));
      }
    } catch (e) {
      return Left(RequestFailures('An Error Occurred!'));
    }
  }

  @override
  Future<Either<Failures, String>> setUserTokens({
    String? accessToken,
    String? refreshToken,
  }) async {
    try {
      if (accessToken != null && refreshToken != null) {
        await _authenticationLocalDataSource.setUserTokens(
          accessToken: accessToken,
          refreshToken: refreshToken,
        );

        return const Right('success');
      } else {
        return Left(RequestFailures('An Error Occurred!'));
      }
    } catch (e) {
      return Left(RequestFailures('An Error Occurred!'));
    }
  }
}
