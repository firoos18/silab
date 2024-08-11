import 'package:either_dart/either.dart';
import 'package:silab/core/failures/failures.dart';
import 'package:silab/core/usecases/usecases.dart';
import 'package:silab/features/announcement/domain/entities/announcement/announcement_entity.dart';
import 'package:silab/features/announcement/domain/repository/announcement_repository.dart';

class GetAnnouncementUseCase
    implements UseCase<Either<Failures, AnnouncementEntity>, Null> {
  final AnnouncementRepository announcementRepository;

  const GetAnnouncementUseCase(this.announcementRepository);

  @override
  Future<Either<Failures, AnnouncementEntity>> call({Null params}) async {
    return announcementRepository.getAnnouncement();
  }
}
