import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/domain/signin/signin_page_state.dart';
import 'package:flutter_template/services/auth_service.dart';

class SigninPageController extends StateNotifier<SignInPageState> {
  SigninPageController({@required this.reader, @required this.authService})
      : super(SignInPageState());

  final Reader reader;
  final AuthService authService;

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  Future submit() async {
    authService.signInWithAutomatically();
  }
}
