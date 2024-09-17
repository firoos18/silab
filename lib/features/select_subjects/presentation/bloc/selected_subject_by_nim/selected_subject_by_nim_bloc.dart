import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_subject/selected_subject_entity.dart';
import 'package:silab/features/select_subjects/domain/usecases/get_user_selected_subject_usecase.dart';

part 'selected_subject_by_nim_event.dart';
part 'selected_subject_by_nim_state.dart';

class SelectedSubjectByNimBloc
    extends Bloc<SelectedSubjectByNimEvent, SelectedSubjectByNimState> {
  final GetSelectedSubjectByNimUsecase _getSelectedSubjectByNimUsecase;

  SelectedSubjectByNimBloc(this._getSelectedSubjectByNimUsecase)
      : super(SelectedSubjectByNimInitial()) {
    on<GetUserSelectedSubjects>(onAppOpened);
  }

  void onAppOpened(
    SelectedSubjectByNimEvent event,
    Emitter<SelectedSubjectByNimState> emit,
  ) async {
    emit(SelectedSubjectByNimLoading());

    final data = await _getSelectedSubjectByNimUsecase.selectedSubjectRepository
        .getUserSelectedSubjects();

    data.fold(
      (left) => emit(SelectedSubjectByNimFailed(message: left.message)),
      (right) => emit(
          SelectedSubjectByNimLoaded(selectedSubjectEntity: data.right.data)),
    );
  }
}
