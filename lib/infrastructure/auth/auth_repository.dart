import 'package:flutter_template/infrastructure/auth/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  @override
  Future signInWithAutomatically() async {
    Future.delayed(const Duration(milliseconds: 500));
    return;
  }
}