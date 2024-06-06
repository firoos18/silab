import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/subjects/data/data_sources/subject_api_service.dart';
import 'package:silab/features/subjects/domain/entities/subject_list_response/subject_list_response_entity.dart';
import 'package:silab/features/subjects/domain/entities/subject_response/subject_response_entity.dart';
import 'package:silab/features/subjects/domain/repository/subject_repository.dart';

class SubjectRepositoryImpl implements SubjectRepository {
  final SubjectApiService _subjectApiService;

  const SubjectRepositoryImpl(this._subjectApiService);

  @override
  Future<Either<Failures, SubjectListResponseEntity>> getSubjectList() async {
    try {
      final result = await _subjectApiService.getSubjectList();

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, SubjectResponseEntity>> getSubjectDetails(
    String? subjectId,
  ) async {
    try {
      final result = await _subjectApiService.getSubjectDetails(subjectId);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
