import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  Future<void> _onLoginSubmitted(
      LoginSubmitted event,
      Emitter<LoginState> emit,
      ) async {
    emit(state.copyWith(status: LoginStatus.loading));

    // Simulate a network call with 1-second delay
    await Future.delayed(const Duration(seconds: 1));

    // Demo credentials validation
    if (event.username == "admin@example.com" && event.password == "Admin@123") {
      emit(state.copyWith(status: LoginStatus.success));
    } else {
      emit(state.copyWith(
        status: LoginStatus.failure,
        errorMessage: "Invalid email or password. Please use the demo credentials.",
      ));
    }
  }
}
