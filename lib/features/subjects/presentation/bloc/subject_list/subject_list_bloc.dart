import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/core/common/entities/subject/subject_entity.dart';
import 'package:silab/features/subjects/domain/usecases/get_subject_list_usecase.dart';

part 'subject_list_event.dart';
part 'subject_list_state.dart';

class SubjectListBloc extends Bloc<SubjectListEvent, SubjectListState> {
  final GetSubjectListUseCase _getSubjectListUseCase;

  SubjectListBloc(this._getSubjectListUseCase) : super(SubjectListInitial()) {
    on<SubjectListEvent>(onGetSubjectList);
  }

  void onGetSubjectList(
    SubjectListEvent event,
    Emitter<SubjectListState> emit,
  ) async {
    emit(SubjectListLoading());

    final data = await _getSubjectListUseCase.subjectRepository
        .getSubjectList(semester: event.semester);

    data.fold(
      (left) => emit(SubjectListFailed(message: left.message)),
      (right) => emit(SubjectListSuccess(subjectList: right.data)),
    );
  }
}
