import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/select_subjects/domain/usecases/get_payment_status_usecase.dart';

part 'get_payment_status_event.dart';
part 'get_payment_status_state.dart';

class GetPaymentStatusBloc
    extends Bloc<GetPaymentStatusEvent, GetPaymentStatusState> {
  final GetPaymentStatusUseCase _getPaymentStatusUseCase;

  GetPaymentStatusBloc(this._getPaymentStatusUseCase)
      : super(GetPaymentStatusInitial()) {
    on<GetPaymentStatus>(onGetPaymentStatus);
  }

  void onGetPaymentStatus(
      GetPaymentStatusEvent event, Emitter<GetPaymentStatusState> emit) {
    emit(GetPaymentStatusLoading());

    final data = _getPaymentStatusUseCase.selectedSubjectRepository
        .getUserPaymentStatus();

    data.fold(
      (left) => emit(GetPaymentStatusFailed(message: left.message)),
      (right) => emit(GetPaymentStatusSuccess(payloadData: right)),
    );
  }
}
