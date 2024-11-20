import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/user_details/domain/entities/user_detail_response/user_detail_response_entity.dart';

abstract class UserRepository {
  Future<Either<Failures, UserDetailResponseEntity>> getUserDetails();
}
