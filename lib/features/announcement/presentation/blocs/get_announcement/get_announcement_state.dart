part of 'get_announcement_bloc.dart';

class GetAnnouncementState extends Equatable {
  final AnnouncementEntity? announcement;
  final String? message;

  const GetAnnouncementState({this.announcement, this.message});

  @override
  List<Object?> get props => [announcement, message];
}

final class GetAnnouncementInitial extends GetAnnouncementState {}

final class GetAnnouncementLoading extends GetAnnouncementState {}

final class GetAnnouncementLoaded extends GetAnnouncementState {
  const GetAnnouncementLoaded({super.announcement});
}

final class GetAnnouncementFailed extends GetAnnouncementState {
  const GetAnnouncementFailed({super.message});
}
