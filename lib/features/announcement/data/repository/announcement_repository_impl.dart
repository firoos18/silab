import 'package:either_dart/either.dart';
import 'package:silab/core/exceptions/exceptions.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/announcement/data/data_sources/announcement_api_service.dart';
import 'package:silab/features/announcement/domain/entities/announcement/announcement_entity.dart';
import 'package:silab/features/announcement/domain/repository/announcement_repository.dart';

class AnnouncementRepositoryImpl extends AnnouncementRepository {
  final AnnouncementApiService announcementApiService;

  AnnouncementRepositoryImpl(this.announcementApiService);

  @override
  Future<Either<Failures, List<AnnouncementEntity>>>
      getAllAnnouncement() async {
    try {
      final result = await announcementApiService.getAnnouncementList();

      return Right(result.data!);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, AnnouncementEntity>> getAnnouncement() async {
    try {
      final result = await announcementApiService.getAnnouncement();

      return Right(result.data!);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
