part of 'user_attendances_bloc.dart';

class UserAttendancesState extends Equatable {
  final String? message;

  const UserAttendancesState({this.message});

  @override
  List<Object?> get props => [message];
}

final class UserAttendancesInitial extends UserAttendancesState {}

final class UserAttendancesLoading extends UserAttendancesState {}

final class UserAttendancesSuccess extends UserAttendancesState {
  const UserAttendancesSuccess({super.message});
}

final class UserAttendancesFailed extends UserAttendancesState {
  const UserAttendancesFailed({super.message});
}
