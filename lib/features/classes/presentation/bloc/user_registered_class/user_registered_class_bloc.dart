import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/core/common/entities/class/class_entity.dart';
import 'package:silab/features/classes/domain/usecases/get_user_registered_classes_usecase.dart';

part 'user_registered_class_event.dart';
part 'user_registered_class_state.dart';

class UserRegisteredClassBloc
    extends Bloc<UserRegisteredClassEvent, UserRegisteredClassState> {
  final GetUserRegisteredClassesUseCase _getUserRegisteredClassesUseCase;

  UserRegisteredClassBloc(this._getUserRegisteredClassesUseCase)
      : super(UserRegisteredClassInitial()) {
    on<GetUserRegisteredClass>(onGetUserRegisteredClass);
  }

  void onGetUserRegisteredClass(UserRegisteredClassEvent event,
      Emitter<UserRegisteredClassState> emit) async {
    emit(UserRegisteredClassLoading());

    final data = await _getUserRegisteredClassesUseCase.classRepository
        .getUserRegisteredClasses();

    data.fold(
      (left) => emit(UserRegisteredClassFailed(message: left.message)),
      (right) => emit(UserRegisteredClassLoaded(registeredClasses: right.data)),
    );
  }
}
