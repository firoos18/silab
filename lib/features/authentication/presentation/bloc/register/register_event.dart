part of 'register_bloc.dart';

sealed class RegisterEvent extends Equatable {
  final RegisterModel? registerData;

  const RegisterEvent({this.registerData});

  @override
  List<Object?> get props => [registerData];
}

final class RegisterButtonTapped extends RegisterEvent {
  const RegisterButtonTapped({super.registerData});
}
