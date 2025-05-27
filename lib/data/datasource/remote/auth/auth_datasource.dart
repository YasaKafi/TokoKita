import 'package:firebase_auth/firebase_auth.dart';

class AuthDatasource {
  final FirebaseAuth _auth;

  // Tambahkan parameter opsional untuk testing
  AuthDatasource({FirebaseAuth? auth}) : _auth = auth ?? FirebaseAuth.instance;

  Future<User?> login(String email, String password) async {
    final userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Stream<User?> get authStateChanges => _auth.authStateChanges();
}