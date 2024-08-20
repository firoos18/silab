import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/subjects/data/models/user_selected_subjects/user_selected_subjects_model.dart';
import 'package:silab/features/subjects/domain/entities/subject/subject_entity.dart';
import 'package:silab/features/subjects/domain/usecases/get_user_selected_subjects_details_usecase.dart';

part 'user_selected_subjects_details_event.dart';
part 'user_selected_subjects_details_state.dart';

class UserSelectedSubjectsDetailsBloc extends Bloc<
    UserSelectedSubjectsDetailsEvent, UserSelectedSubjectsDetailsState> {
  final GetUserSelectedSubjectsDetailsUseCase
      _getUserSelectedSubjectsDetailsUseCase;

  UserSelectedSubjectsDetailsBloc(this._getUserSelectedSubjectsDetailsUseCase)
      : super(UserSelectedSubjectsDetailsInitial()) {
    on<GetUserSelectedSubjectsDetails>(getUserSelectedSubjectsDetails);
  }

  void getUserSelectedSubjectsDetails(UserSelectedSubjectsDetailsEvent event,
      Emitter<UserSelectedSubjectsDetailsState> emit) async {
    emit(UserSelectedSubjectsDetailsLoading());

    final data = await _getUserSelectedSubjectsDetailsUseCase.subjectRepository
        .getUserSelectedSubjectsDetails(subjects: event.subjects);

    data.fold(
      (left) => emit(UserSelectedSubjectsDetailsFailed(message: left.message)),
      (right) =>
          emit(UserSelectedSubjectsDetailsLoaded(subjectDetails: right.data)),
    );
  }
}
