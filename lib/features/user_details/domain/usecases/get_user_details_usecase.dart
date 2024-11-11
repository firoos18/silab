import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/user_details/domain/entities/user_detail_response/user_detail_response_entity.dart';
import 'package:silab/features/user_details/domain/repositories/user_repository.dart';

class GetUserDetailsUseCase
    implements UseCase<Either<Failures, UserDetailResponseEntity>, Null> {
  final UserRepository userRepository;

  const GetUserDetailsUseCase(this.userRepository);

  @override
  Future<Either<Failures, UserDetailResponseEntity>> call({Null params}) async {
    return await userRepository.getUserDetails();
  }
}
