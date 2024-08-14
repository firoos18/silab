part of 'get_payment_status_bloc.dart';

class GetPaymentStatusState extends Equatable {
  final Map<String, dynamic>? payloadData;
  final String? message;

  const GetPaymentStatusState({this.message, this.payloadData});

  @override
  List<Object?> get props => [payloadData, message];
}

final class GetPaymentStatusInitial extends GetPaymentStatusState {}

final class GetPaymentStatusLoading extends GetPaymentStatusState {}

final class GetPaymentStatusSuccess extends GetPaymentStatusState {
  const GetPaymentStatusSuccess({super.payloadData});
}

final class GetPaymentStatusFailed extends GetPaymentStatusState {
  const GetPaymentStatusFailed({super.message});
}
