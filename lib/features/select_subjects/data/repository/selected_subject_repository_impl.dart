import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/select_subjects/data/data_sources/selected_subject_api_service.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_subject_response/selected_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/repository/selected_subject_repository.dart';

class SelectedSubjectRepositoryImpl implements SelectedSubjectRepository {
  final SelectedSubjectApiService _selectedSubjectApiService;

  const SelectedSubjectRepositoryImpl(this._selectedSubjectApiService);

  @override
  Future<Either<Failures, SelectedSubjectResponseEntity>>
      getSelectedSubjectByNim(String? nim) async {
    try {
      final result =
          await _selectedSubjectApiService.getSelectedSubjectByNim(nim);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}