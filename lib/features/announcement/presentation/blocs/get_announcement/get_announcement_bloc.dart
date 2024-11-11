import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/announcement/domain/entities/announcement/announcement_entity.dart';
import 'package:silab/features/announcement/domain/usecases/get_announcement_usecase.dart';

part 'get_announcement_event.dart';
part 'get_announcement_state.dart';

class GetAnnouncementBloc
    extends Bloc<GetAnnouncementEvent, GetAnnouncementState> {
  final GetAnnouncementUseCase _getAnnouncementUseCase;

  GetAnnouncementBloc(this._getAnnouncementUseCase)
      : super(GetAnnouncementInitial()) {
    on<GetAnnouncementEvent>(onGetAnnouncement);
  }

  void onGetAnnouncement(
      GetAnnouncementEvent event, Emitter<GetAnnouncementState> emit) async {
    if (event.id != null) {
      final data = await _getAnnouncementUseCase.announcementRepository
          .getAnnouncement(id: event.id!);

      data.fold(
        (left) => emit(GetAnnouncementFailed(message: left.message)),
        (right) => emit(GetAnnouncementLoaded(announcement: right)),
      );
    } else {
      emit(const GetAnnouncementFailed(message: 'An Error Occured'));
    }
  }
}
