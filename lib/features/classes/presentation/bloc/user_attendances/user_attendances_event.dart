part of 'user_attendances_bloc.dart';

class UserAttendancesEvent extends Equatable {
  final String? classId;
  final String? meetingId;
  final String? meetingToken;

  const UserAttendancesEvent({this.classId, this.meetingId, this.meetingToken});

  @override
  List<Object?> get props => [
        classId,
        meetingId,
        meetingToken,
      ];
}

final class AddUserAttendances extends UserAttendancesEvent {
  const AddUserAttendances({
    super.classId,
    super.meetingId,
    super.meetingToken,
  });
}
