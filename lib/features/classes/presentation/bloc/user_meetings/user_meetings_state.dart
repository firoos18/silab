part of 'user_meetings_bloc.dart';

class UserMeetingsState extends Equatable {
  final String? message;
  final List<MeetingsEntity>? meetingsData;

  const UserMeetingsState({
    this.meetingsData,
    this.message,
  });

  @override
  List<Object?> get props => [
        meetingsData,
        message,
      ];
}

final class UserMeetingsInitial extends UserMeetingsState {}

final class UserMeetingsLoading extends UserMeetingsState {}

final class UserMeetingsLoaded extends UserMeetingsState {
  const UserMeetingsLoaded({super.meetingsData});
}

final class UserMeetingsFailed extends UserMeetingsState {
  const UserMeetingsFailed({super.message});
}
