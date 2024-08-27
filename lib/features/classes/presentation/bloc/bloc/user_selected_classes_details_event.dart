part of 'user_selected_classes_details_bloc.dart';

class UserSelectedClassesDetailsEvent extends Equatable {
  final List<String>? classes;

  const UserSelectedClassesDetailsEvent({this.classes});

  @override
  List<Object?> get props => [classes];
}

final class SimpanKelasButtonTapped extends UserSelectedClassesDetailsEvent {
  const SimpanKelasButtonTapped({super.classes});
}
