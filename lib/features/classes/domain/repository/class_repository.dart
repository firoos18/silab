import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/classes/domain/entities/class_list_response/classes_response_entity.dart';
import 'package:silab/features/classes/domain/entities/class_response/class_response_entity.dart';

abstract class ClassRepository {
  Future<Either<Failures, ClassesResponseEntity>> getClasses();

  Future<Either<Failures, ClassResponseEntity>> getClassById(String? classId);

  Future<Either<Failures, ClassesResponseEntity>> getUserRegisteredClasses();
}
