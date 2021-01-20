import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/controllers/navigation_controller.dart';
import 'package:flutter_template/presentation/organisms/sign_in_form.dart';
import 'package:flutter_template/providers/providers.dart';

class SigninPage extends ConsumerWidget {
  SigninPage();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(signinPageControllerProvider.state);

    return Scaffold(
      appBar: AppBar(
        title: Text("SignIn"),
      ),
      body: Column(
        children: [
          SignInForm(
            onPressed: () async {
              await context.read(signinPageControllerProvider).submit();
              await Navigator.of(context).pushReplacementNamed(Routes.Counter);
            },
          )
        ],
      ),
    );
  }
}
