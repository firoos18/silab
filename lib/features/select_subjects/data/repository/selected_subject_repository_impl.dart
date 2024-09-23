import 'dart:io';
import 'package:either_dart/either.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/select_subjects/data/data_sources/selected_subject_api_service.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_class_response/add_selected_class_response_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/add_selected_subject_response/add_selected_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_subject_response/selected_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/user_class_option_by_paid_subject_response/user_class_option_by_paid_subject_response_entity.dart';
import 'package:silab/features/select_subjects/domain/repository/selected_subject_repository.dart';

class SelectedSubjectRepositoryImpl implements SelectedSubjectRepository {
  final SelectedSubjectApiService _selectedSubjectApiService;

  const SelectedSubjectRepositoryImpl(this._selectedSubjectApiService);

  @override
  Future<Either<Failures, SelectedSubjectResponseEntity>>
      getUserSelectedSubjects() async {
    try {
      final result = await _selectedSubjectApiService.getUserSelectedSubject();

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, AddSelectedSubjectResponseEntity>>
      addUserSelectedSubject({
    List<String>? subjects,
  }) async {
    try {
      final result =
          await _selectedSubjectApiService.addUserSelectedSubject(subjects);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, AddSelectedClassResponseEntity>> addSelectedClass(
      {List<String>? selectedClass}) async {
    try {
      final result = await _selectedSubjectApiService.addSelectedClass(
          selectedClass: selectedClass);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, UserClassOptionByPaidSubjectResponseEntity>>
      getUserClassOptionbyPaidSubjects() async {
    try {
      final result =
          await _selectedSubjectApiService.getUserClassOptionbyPaidSubjects();

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
