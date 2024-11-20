import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/announcement/domain/entities/announcement/announcement_entity.dart';
import 'package:silab/features/announcement/domain/usecases/get_all_announcements_usecase.dart';

part 'get_all_announcements_event.dart';
part 'get_all_announcements_state.dart';

class GetAllAnnouncementsBloc
    extends Bloc<GetAllAnnouncementsEvent, GetAllAnnouncementsState> {
  final GetAllAnnouncementsUseCase _getAllAnnouncementsUseCase;

  GetAllAnnouncementsBloc(this._getAllAnnouncementsUseCase)
      : super(GetAllAnnouncementsInitial()) {
    on<GetAllAnnouncements>(onGetAllAnnouncements);
  }

  void onGetAllAnnouncements(GetAllAnnouncementsEvent event,
      Emitter<GetAllAnnouncementsState> emit) async {
    emit(GetAllAnnouncementsLoading());

    final data = await _getAllAnnouncementsUseCase.announcementRepository
        .getAllAnnouncement();

    data.fold(
      (left) => emit(GetAllAnnouncementsFailed(message: left.message)),
      (right) => emit(GetAllAnnouncementsLoaded(announcements: right)),
    );
  }
}
