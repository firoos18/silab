import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/core/common/entities/subject/subject_entity.dart';
import 'package:silab/features/subjects/domain/usecases/get_subject_details_usecase.dart';

part 'subject_details_event.dart';
part 'subject_details_state.dart';

class SubjectDetailsBloc
    extends Bloc<SubjectDetailsEvent, SubjectDetailsState> {
  final GetSubjectDetailsUseCase _getSubjectDetailsUseCase;

  SubjectDetailsBloc(this._getSubjectDetailsUseCase)
      : super(SubjectDetailInitial()) {
    on<SubjectDetailsEvent>(onSubjectDetailPageOpened);
  }

  void onSubjectDetailPageOpened(
    SubjectDetailsEvent event,
    Emitter<SubjectDetailsState> emit,
  ) async {
    emit(SubjectDetailLoading());

    if (event.subjectId != null) {
      final subjectDetail = await _getSubjectDetailsUseCase.subjectRepository
          .getSubjectDetails(event.subjectId);

      subjectDetail.fold(
        (left) => emit(SubjectDetailFailed(message: left.message)),
        (right) => emit(SubjectDetailLoaded(subjectEntity: right.data)),
      );
    } else {
      emit(const SubjectDetailFailed(message: 'Subject ID is Empty.'));
    }
  }
}
