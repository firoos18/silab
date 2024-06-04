import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/core/common/entities/class/class_entity.dart';
import 'package:silab/features/classes/domain/usecases/get_class_list_usecase.dart';

part 'class_list_event.dart';
part 'class_list_state.dart';

class ClassListBloc extends Bloc<ClassListEvent, ClassListState> {
  final GetClassListUseCase _getClassListUseCase;

  ClassListBloc(this._getClassListUseCase) : super(ClassListInitial()) {
    on<PageOpened>(onPageOpened);
  }

  void onPageOpened(ClassListEvent event, Emitter<ClassListState> emit) async {
    emit(ClassListLoading());

    final classList = await _getClassListUseCase.classRepository.getClasses();

    classList.fold(
      (left) => emit(ClassListFailed(message: left.message)),
      (right) => emit(ClassListLoaded(classList: right.data)),
    );
  }
}
