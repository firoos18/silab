part of 'user_details_bloc.dart';

class UserDetailsState extends Equatable {
  final UserDetailEntity? userDetailEntity;
  final String? message;

  const UserDetailsState({this.message, this.userDetailEntity});

  @override
  List<Object?> get props => [message, userDetailEntity];
}

final class UserDetailInitial extends UserDetailsState {}

final class UserDetailLoading extends UserDetailsState {}

final class UserDetailLoaded extends UserDetailsState {
  const UserDetailLoaded({super.userDetailEntity});
}

final class UserDetailFailed extends UserDetailsState {
  const UserDetailFailed({super.message});
}
