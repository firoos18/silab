part of 'user_details_bloc.dart';

class UserDetailsEvent extends Equatable {
  const UserDetailsEvent();

  @override
  List<Object?> get props => [];
}

final class GetUserDetails extends UserDetailsEvent {}
