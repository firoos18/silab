import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/subjects/domain/entities/subject_list_response/subject_list_response_entity.dart';
import 'package:silab/features/subjects/domain/entities/subject_response/subject_response_entity.dart';

abstract class SubjectRepository {
  Future<Either<Failures, SubjectListResponseEntity>> getSubjectList();

  Future<Either<Failures, SubjectResponseEntity>> getSubjectDetails(
    String? subjectId,
  );
}
