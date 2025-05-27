
abstract class AuthRepository {
  Future<void> signInWithEmailAndPassword({required String email, required String password});
}