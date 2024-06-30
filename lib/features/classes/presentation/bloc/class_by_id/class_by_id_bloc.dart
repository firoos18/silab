import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/classes/domain/entities/class/class_entity.dart';
import 'package:silab/features/classes/domain/usecases/get_class_by_id_usecase.dart';

part 'class_by_id_event.dart';
part 'class_by_id_state.dart';

class ClassByIdBloc extends Bloc<ClassByIdEvent, ClassByIdState> {
  final GetClassByIdUseCase _getClassByIdUseCase;

  ClassByIdBloc(this._getClassByIdUseCase) : super(ClassByIdInitial()) {
    on<ClassDetailPageOpened>(onClassDetailPageOpened);
  }

  void onClassDetailPageOpened(
      ClassByIdEvent event, Emitter<ClassByIdState> emit) async {
    emit(ClassByIdLoading());

    if (event.classId != null) {
      final data = await _getClassByIdUseCase.classRepository
          .getClassById(event.classId);

      data.fold(
        (left) => emit(ClassByIdFailed(message: left.message)),
        (right) => emit(ClassByIdLoaded(classEntity: right.data)),
      );
    } else {
      emit(const ClassByIdFailed(message: 'Class ID is Empty'));
    }
  }
}
