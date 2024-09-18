import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/features/announcement/domain/entities/announcement/announcement_entity.dart';

abstract class AnnouncementRepository {
  Future<Either<Failures, List<AnnouncementEntity>>> getAllAnnouncement();

  Future<Either<Failures, AnnouncementEntity>> getAnnouncement({String id});
}
