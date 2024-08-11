import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/select_subjects/domain/entities/add_subject_subjects/add_subject_subjects_entity.dart';
import 'package:silab/features/select_subjects/domain/usecases/add_selected_subject_usecase.dart';

part 'add_selected_subject_event.dart';
part 'add_selected_subject_state.dart';

class AddSelectedSubjectBloc
    extends Bloc<AddSelectedSubjectEvent, AddSelectedSubjectState> {
  final AddSelectedSubjectUseCase _addSelectedSubjectUseCase;

  AddSelectedSubjectBloc(this._addSelectedSubjectUseCase)
      : super(AddSelectedSubjectInitial()) {
    on<AddSelectedSubjectButtonTapped>(onAddSelectedSubjectButtonTapped);
  }

  void onAddSelectedSubjectButtonTapped(AddSelectedSubjectEvent event,
      Emitter<AddSelectedSubjectState> emit) async {
    emit(AddSelectedSubjectLoading());

    if (event.subjects != null) {
      final data = await _addSelectedSubjectUseCase.selectedSubjectRepository
          .addSelectedSubject(subjects: event.subjects);

      data.fold(
        (left) => emit(AddSelectedSubjectFailed(message: left.message)),
        (right) =>
            emit(AddSelectedSubjectSuccess(selectedSubjectEntity: right.data)),
      );
    } else {
      emit(const AddSelectedSubjectFailed(
          message: 'Selected Subject Data is null'));
    }
  }
}
