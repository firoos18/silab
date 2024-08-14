class PaymentStatusEntity {
  final String event;
  final String type;
  final Payload payload;

  const PaymentStatusEntity({
    required this.event,
    required this.payload,
    required this.type,
  });

  factory PaymentStatusEntity.fromPayload(Map<String, dynamic> payload) {
    return PaymentStatusEntity(
      event: payload['event'],
      payload: payload['payload'],
      type: payload['type'],
    );
  }
}

class Payload {
  final String status;

  const Payload({required this.status});
}
