import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/schedule/domain/entities/schedule/schedule_entity.dart';
import 'package:silab/features/schedule/domain/usecases/get_user_schedule_usecase.dart';

part 'user_schedule_event.dart';
part 'user_schedule_state.dart';

class UserScheduleBloc extends Bloc<UserScheduleEvent, UserScheduleState> {
  final GetUserScheduleUsecase _getUserScheduleUsecase;

  UserScheduleBloc(this._getUserScheduleUsecase)
      : super(UserScheduleInitial()) {
    on<GetUserSchedule>(onGetUserSchedule);
  }

  void onGetUserSchedule(
      UserScheduleEvent event, Emitter<UserScheduleState> emit) async {
    emit(UserScheduleLoading());

    final data =
        await _getUserScheduleUsecase.scheduleRepository.getUserSchedule();

    data.fold(
      (left) => emit(UserScheduleFailed(message: left.message)),
      (right) => emit(UserScheduleSuccess(schedules: right)),
    );
  }
}
