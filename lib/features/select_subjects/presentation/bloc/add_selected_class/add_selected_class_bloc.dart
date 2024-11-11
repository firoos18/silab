import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_class/selected_class_entity.dart';
import 'package:silab/features/select_subjects/domain/usecases/add_selected_class_usecase.dart';

part 'add_selected_class_event.dart';
part 'add_selected_class_state.dart';

class AddSelectedClassBloc
    extends Bloc<AddSelectedClassEvent, AddSelectedClassState> {
  final AddSelectedClassUseCase _addSelectedClassUseCase;

  AddSelectedClassBloc(this._addSelectedClassUseCase)
      : super(AddSelectedClassInitial()) {
    on<AddSelectedClass>(onAddSelectedClass);
  }

  void onAddSelectedClass(
      AddSelectedClassEvent event, Emitter<AddSelectedClassState> emit) async {
    emit(AddSelectedClassLoading());

    final data = await _addSelectedClassUseCase.selectedSubjectRepository
        .addSelectedClass(selectedClass: event.selectedClass);

    data.fold(
      (left) => emit(AddSelectedClassFailed(message: left.message)),
      (right) => emit(AddSelectedClassSuccess()),
    );
  }
}
