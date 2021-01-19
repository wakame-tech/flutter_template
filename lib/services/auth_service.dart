import 'package:flutter/foundation.dart';
import 'package:flutter_template/infrastructure/auth/i_auth_repository.dart';

class AuthService {
  const AuthService({@required IAuthRepository authRepository})
      : _authRepository = authRepository;

  final IAuthRepository _authRepository;

  Future signInWithAutomatically() async {
    return _authRepository.signInWithAutomatically();
  }

  Future signUpWithEmailAndPassword({
    @required String email,
    @required String password,
  }) async {
    // ...
    return;
  }

  Future signInWithEmailAndPassword({
    @required String email,
    @required String password,
  }) async {
    // ...
    return;
  }
}
