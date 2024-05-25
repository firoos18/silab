import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/authentication/data/models/register_model.dart';
import 'package:silab/features/authentication/domain/entities/send_otp/send_otp_entity.dart';
import 'package:silab/features/authentication/domain/usecases/user_register_usecase.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final UserRegisterUseCase _userRegisterUseCase;

  RegisterBloc(this._userRegisterUseCase) : super(RegisterInitial()) {
    on<RegisterButtonTapped>(onRegisterButtonTapped);
  }

  void onRegisterButtonTapped(
      RegisterEvent event, Emitter<RegisterState> emit) async {
    emit(RegisterLoading());

    if (event.registerData != null) {
      final data = await _userRegisterUseCase.authenticationRepository
          .userRegister(event.registerData!);

      data.fold(
        (left) => emit(RegisterFailed(message: left.message)),
        (right) => emit(RegisterSuccess(registerData: data.right.data!)),
      );
    } else {
      emit(const RegisterFailed(message: "Register Data is Empty"));
    }
  }
}
