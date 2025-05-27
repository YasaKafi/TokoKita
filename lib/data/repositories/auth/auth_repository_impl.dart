import 'package:toko_kita/data/datasource/remote/auth/auth_datasource.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    return remoteDataSource.login(email, password).then((user) {
      if (user == null) {
        throw Exception('Login failed');
      }
    });
  }
}
