import 'dart:io';
import 'package:either_dart/either.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/classes/data/data_sources/classes_api_service.dart';
import 'package:silab/features/classes/domain/entities/attendance/attendance_entity.dart';
import 'package:silab/features/classes/domain/entities/class_list_response/classes_response_entity.dart';
import 'package:silab/features/classes/domain/entities/class_response/class_response_entity.dart';
import 'package:silab/features/classes/domain/entities/classes_details_response/classes_details_response_entity.dart';
import 'package:silab/features/classes/domain/entities/meetings_response/meetings_response_entity.dart';
import 'package:silab/features/classes/domain/repository/class_repository.dart';

class ClassRepositoryImpl implements ClassRepository {
  final ClassesApiService _classesApiService;

  const ClassRepositoryImpl(this._classesApiService);

  @override
  Future<Either<Failures, ClassResponseEntity>> getClassById(
    String? classId,
  ) async {
    try {
      final result = await _classesApiService.getClassById(classId);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, ClassesResponseEntity>> getClasses() async {
    try {
      final result = await _classesApiService.getClassesList();

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, ClassesResponseEntity>>
      getUserRegisteredClasses() async {
    try {
      final result = await _classesApiService.getUserRegisteredClasses();

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, ClassesDetailsResponseEntity>>
      getUserSelectedClassesDetails({List<String>? classes}) async {
    try {
      final result = await _classesApiService.getUserSelectedClassesDetails(
          classes: classes);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, MeetingsResponseEntity>> getUserMeetingsData(
      {String? classId}) async {
    try {
      final result =
          await _classesApiService.getUserMeetingsData(classId: classId);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, AttendanceEntity>> addUserAttendances(
      {String? classId, String? meetingId, String? meetingToken}) async {
    try {
      final result = await _classesApiService.addUserAttendance(
        classId: classId,
        meetingId: meetingId,
        meetingToken: meetingToken,
      );

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
