part of 'class_by_id_bloc.dart';

class ClassByIdEvent extends Equatable {
  final String? classId;

  const ClassByIdEvent({this.classId});

  @override
  List<Object?> get props => [classId];
}

final class ClassDetailPageOpened extends ClassByIdEvent {}
