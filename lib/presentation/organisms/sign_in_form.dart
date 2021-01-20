import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({@required this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Text("Sign In"),
        onPressed: onPressed,
      ),
    );
  }
}