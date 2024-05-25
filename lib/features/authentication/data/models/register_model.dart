import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel {
  final String? email;
  final String? password;
  final String? repeatPassword;
  final String? fullname;
  final String? nim;

  RegisterModel({
    this.email,
    this.fullname,
    this.nim,
    this.password,
    this.repeatPassword,
  });

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}
