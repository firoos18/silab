part of 'user_selected_classes_details_bloc.dart';

class UserSelectedClassesDetailsState extends Equatable {
  final List<ClassEntity>? classesDetails;
  final String? message;

  const UserSelectedClassesDetailsState({this.classesDetails, this.message});

  @override
  List<Object?> get props => [classesDetails, message];
}

final class UserSelectedClassesDetailsInitial
    extends UserSelectedClassesDetailsState {}

final class UserSelectedClassesDetailsLoading
    extends UserSelectedClassesDetailsState {}

final class UserSelectedClassesDetailsLoaded
    extends UserSelectedClassesDetailsState {
  const UserSelectedClassesDetailsLoaded({super.classesDetails});
}

final class UserSelectedClassesDetailsFailed
    extends UserSelectedClassesDetailsState {
  const UserSelectedClassesDetailsFailed({super.message});
}
