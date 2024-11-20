import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/classes/domain/entities/meetings/meetings_entity.dart';
import 'package:silab/features/classes/domain/usecases/get_user_meetings_data_usecase.dart';

part 'user_meetings_event.dart';
part 'user_meetings_state.dart';

class UserMeetingsBloc extends Bloc<UserMeetingsEvent, UserMeetingsState> {
  final GetUserMeetingsDataUsecase _getUserMeetingsDataUsecase;

  UserMeetingsBloc(this._getUserMeetingsDataUsecase)
      : super(UserMeetingsInitial()) {
    on<GetUserMeetings>(onGetUserMeetingsData);
  }

  void onGetUserMeetingsData(
      UserMeetingsEvent event, Emitter<UserMeetingsState> emit) async {
    emit(UserMeetingsLoading());

    final data = await _getUserMeetingsDataUsecase.classRepository
        .getUserMeetingsData(classId: event.classId);

    data.fold(
      (left) => emit(UserMeetingsFailed(message: left.message)),
      (right) => emit(UserMeetingsLoaded(meetingsData: right.data)),
    );
  }
}
