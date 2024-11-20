import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/announcement/domain/entities/announcement/announcement_entity.dart';
import 'package:silab/features/announcement/domain/repository/announcement_repository.dart';

class GetAllAnnouncementsUseCase
    implements UseCase<Either<Failures, List<AnnouncementEntity>>, Null> {
  final AnnouncementRepository announcementRepository;

  const GetAllAnnouncementsUseCase(this.announcementRepository);

  @override
  Future<Either<Failures, List<AnnouncementEntity>>> call({Null params}) async {
    return announcementRepository.getAllAnnouncement();
  }
}
