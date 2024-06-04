import 'dart:io';
import 'package:either_dart/either.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/user_details/data/data_sources/user_api_service.dart';
import 'package:silab/features/user_details/domain/entities/user_detail_response/user_detail_response_entity.dart';
import 'package:silab/features/user_details/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApiService _userApiService;

  const UserRepositoryImpl(this._userApiService);

  @override
  Future<Either<Failures, UserDetailResponseEntity>> getUserDetails(
    String? nim,
  ) async {
    try {
      final result = await _userApiService.getUserDetails(nim);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
