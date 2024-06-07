import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_subject/selected_subject_entity.dart';
import 'package:silab/features/select_subjects/domain/usecases/get_selected_subject_by_nim_usecase.dart';

part 'selected_subject_by_nim_event.dart';
part 'selected_subject_by_nim_state.dart';

class SelectedSubjectByNimBloc
    extends Bloc<SelectedSubjectByNimEvent, SelectedSubjectByNimState> {
  final GetSelectedSubjectByNimUsecase _getSelectedSubjectByNimUsecase;
  final SharedPreferences _sharedPreferences;

  SelectedSubjectByNimBloc(
      this._getSelectedSubjectByNimUsecase, this._sharedPreferences)
      : super(SelectedSubjectByNimInitial()) {
    on<GetUserSelectedSubjects>(onAppOpened);
  }

  void onAppOpened(
    SelectedSubjectByNimEvent event,
    Emitter<SelectedSubjectByNimState> emit,
  ) async {
    emit(SelectedSubjectByNimLoading());

    final String? nim = _sharedPreferences.getString('nim');

    if (nim != null) {
      final data = await _getSelectedSubjectByNimUsecase
          .selectedSubjectRepository
          .getSelectedSubjectByNim(nim);

      data.fold(
        (left) => emit(SelectedSubjectByNimFailed(message: left.message)),
        (right) => emit(
            SelectedSubjectByNimLoaded(selectedSubjectEntity: data.right.data)),
      );
    } else {
      emit(const SelectedSubjectByNimFailed(message: "NIM is empty."));
    }
  }
}
