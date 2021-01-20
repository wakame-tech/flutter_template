import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/infrastructure/auth/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  const AuthRepository({@required this.auth});

  final FirebaseAuth auth;

  @override
  Future<User> signInWithAutomatically() async {
    final cred = await auth.signInAnonymously();
    return cred.user;
  }
}