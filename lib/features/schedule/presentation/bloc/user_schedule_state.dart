part of 'user_schedule_bloc.dart';

class UserScheduleState extends Equatable {
  final List<ScheduleEntity>? schedules;
  final String? message;

  const UserScheduleState({this.message, this.schedules});

  @override
  List<Object?> get props => [schedules, message];
}

final class UserScheduleInitial extends UserScheduleState {}

final class UserScheduleLoading extends UserScheduleState {}

final class UserScheduleSuccess extends UserScheduleState {
  const UserScheduleSuccess({super.schedules});
}

final class UserScheduleFailed extends UserScheduleState {
  const UserScheduleFailed({super.message});
}
