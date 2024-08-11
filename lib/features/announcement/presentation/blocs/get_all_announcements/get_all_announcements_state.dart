part of 'get_all_announcements_bloc.dart';

class GetAllAnnouncementsState extends Equatable {
  final List<AnnouncementEntity>? announcements;
  final String? message;

  const GetAllAnnouncementsState({this.announcements, this.message});

  @override
  List<Object?> get props => [announcements, message];
}

final class GetAllAnnouncementsInitial extends GetAllAnnouncementsState {}

final class GetAllAnnouncementsLoading extends GetAllAnnouncementsState {}

final class GetAllAnnouncementsLoaded extends GetAllAnnouncementsState {
  const GetAllAnnouncementsLoaded({super.announcements});
}

final class GetAllAnnouncementsFailed extends GetAllAnnouncementsState {
  const GetAllAnnouncementsFailed({super.message});
}
