import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/repositories/auth/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository;

  AuthBloc({required AuthRepository authRepository})
      : _repository = authRepository,
        super(const AuthState.initial()) {
    on<_LoginWithEmail>(_loginWithEmail);
  }

  Future<void> _loginWithEmail(
      _LoginWithEmail event,
      Emitter<AuthState> emit,
      ) async {
    emit(const AuthState.loading());

    try {
      await _repository.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      emit(const AuthState.success("Login berhasil"));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }


  }


}
