import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/classes/domain/usecases/add_user_attendances_usecase.dart';

part 'user_attendances_event.dart';
part 'user_attendances_state.dart';

class UserAttendancesBloc
    extends Bloc<UserAttendancesEvent, UserAttendancesState> {
  final AddUserAttendancesUsecase _addUserAttendancesUsecase;

  UserAttendancesBloc(this._addUserAttendancesUsecase)
      : super(UserAttendancesInitial()) {
    on<UserAttendancesEvent>(onAddUserAttendances);
  }

  void onAddUserAttendances(
      UserAttendancesEvent event, Emitter<UserAttendancesState> emit) async {
    emit(UserAttendancesLoading());

    final data =
        await _addUserAttendancesUsecase.classRepository.addUserAttendances(
      classId: event.classId,
      meetingId: event.meetingId,
      meetingToken: event.meetingToken,
    );

    data.fold(
      (left) => emit(UserAttendancesFailed(message: left.message)),
      (right) => emit(UserAttendancesSuccess(message: right.message)),
    );
  }
}
