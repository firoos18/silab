part of 'reset_password_bloc.dart';

class ResetPasswordEvent extends Equatable {
  final ResetPasswordModel? resetPasswordData;

  const ResetPasswordEvent({this.resetPasswordData});

  @override
  List<Object?> get props => [resetPasswordData];
}

final class ResetPasswordButtonTapped extends ResetPasswordEvent {
  const ResetPasswordButtonTapped({super.resetPasswordData});
}
