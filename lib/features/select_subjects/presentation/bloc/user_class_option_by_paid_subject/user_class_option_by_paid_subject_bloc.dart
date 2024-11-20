import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/select_subjects/domain/usecases/get_user_class_option_by_paid_subject_usecase.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_event.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_state.dart';

class UserClassOptionByPaidSubjectBloc extends Bloc<
    UserClassOptionByPaidSubjectEvent, UserClassOptionByPaidSubjectState> {
  final GetUserClassOptionByPaidSubjectUsecase
      _getUserClassOptionByPaidSubjectUsecase;

  UserClassOptionByPaidSubjectBloc(this._getUserClassOptionByPaidSubjectUsecase)
      : super(UserClassOptionByPaidSubjectInitial()) {
    on<GetUserClassOptionByPaidSubject>(onGetUserClassOptionByPaidSubject);
  }

  void onGetUserClassOptionByPaidSubject(
      UserClassOptionByPaidSubjectEvent event,
      Emitter<UserClassOptionByPaidSubjectState> emit) async {
    emit(UserClassOptionByPaidSubjectLoading());

    final data = await _getUserClassOptionByPaidSubjectUsecase
        .selectedSubjectRepository
        .getUserClassOptionbyPaidSubjects();

    data.fold(
      (left) => emit(UserClassOptionByPaidSubjectFailed(message: left.message)),
      (right) => emit(UserClassOptionByPaidSubjectLoaded(
          userClassOptionByPaidSubjectEntity: right.data)),
    );
  }
}
