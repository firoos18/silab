import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  final String? nim;
  final String? password;

  const LoginModel({
    this.nim,
    this.password,
  });

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
