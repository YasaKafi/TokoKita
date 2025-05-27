part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.reset() = _Reset;
  const factory AuthEvent.loginWithEmail({
    required String email,
    required String password,
  }) = _LoginWithEmail;
  const factory AuthEvent.signOut() = _SignOut;
}
