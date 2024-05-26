import 'dart:io';
import 'package:either_dart/either.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/authentication/data/data_sources/local/authentication_local_datasource.dart';
import 'package:silab/features/authentication/data/data_sources/remote/authentication_api_service.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/data/models/register_model.dart';
import 'package:silab/features/authentication/data/models/resend_otp_model.dart';
import 'package:silab/features/authentication/data/models/verify_otp_model.dart';
import 'package:silab/features/authentication/domain/entities/login_response/login_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/register_response/register_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/resend_otp_response/resend_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/entities/verify_otp/verify_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationApiService _authenticationApiService;
  final AuthenticationLocalDataSource _authenticationLocalDataSource;

  const AuthenticationRepositoryImpl(
    this._authenticationApiService,
    this._authenticationLocalDataSource,
  );

  @override
  Either<Failures, String> getUsertToken() {
    final token = _authenticationLocalDataSource.getUserToken();

    if (token != null) {
      return Right(token);
    } else {
      return Left(RequestFailures("No User Token Found"));
    }
  }

  @override
  Future<Either<Failures, ResendOtpResponseEntity>> resendEmailVerificationOtp(
    ResendOtpModel resendOtpData,
  ) async {
    try {
      final result = await _authenticationApiService
          .resendEmailVerificationOtp(resendOtpData);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, String>> setUserToken(String? userToken) async {
    try {
      if (userToken != null) {
        await _authenticationLocalDataSource.setUserToken(userToken);

        return const Right("success");
      } else {
        throw "User Token is Empty";
      }
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } catch (e) {
      return Left(RequestFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, LoginResponseEntity>> userLogin(
    LoginModel loginData,
  ) async {
    try {
      final result = await _authenticationApiService.userLogin(loginData);

      setUserToken(result.data!.token);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, RegisterResponseEntity>> userRegister(
    RegisterModel registerData,
  ) async {
    try {
      final result = await _authenticationApiService.userRegister(registerData);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, VerifyOtpResponseEntity>> verifyOtp(
      VerifyOtpModel verifyOtpData) async {
    try {
      final result = await _authenticationApiService.verifyOtp(verifyOtpData);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
