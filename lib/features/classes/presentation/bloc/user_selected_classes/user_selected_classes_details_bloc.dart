import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/classes/domain/entities/class/class_entity.dart';
import 'package:silab/features/classes/domain/usecases/get_user_selected_classes_details.dart';

part 'user_selected_classes_details_event.dart';
part 'user_selected_classes_details_state.dart';

class UserSelectedClassesDetailsBloc extends Bloc<
    UserSelectedClassesDetailsEvent, UserSelectedClassesDetailsState> {
  final GetUserSelectedClassesDetailsUseCase
      _getUserSelectedClassesDetailsUseCase;

  UserSelectedClassesDetailsBloc(this._getUserSelectedClassesDetailsUseCase)
      : super(UserSelectedClassesDetailsInitial()) {
    on<SimpanKelasButtonTapped>(onSimpanKelasButtonTapped);
  }

  void onSimpanKelasButtonTapped(UserSelectedClassesDetailsEvent event,
      Emitter<UserSelectedClassesDetailsState> emit) async {
    if (event.classes != null) {
      final data = await _getUserSelectedClassesDetailsUseCase.classRepository
          .getUserSelectedClassesDetails(classes: event.classes);

      data.fold(
        (left) => emit(UserSelectedClassesDetailsFailed(message: left.message)),
        (right) =>
            emit(UserSelectedClassesDetailsLoaded(classesDetails: right.data)),
      );
    } else {
      emit(const UserSelectedClassesDetailsFailed(
          message: 'No Classes Selected'));
    }
  }
}
