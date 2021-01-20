import 'package:flutter/cupertino.dart';
import 'package:flutter_template/presentation/pages/pages.dart';
import 'package:flutter_template/presentation/pages/signin/signin_page.dart';

// TODO: add routing guards
class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    '/signin': (BuildContext context) => SigninPage(),
    '/counter': (BuildContext context) => CounterPage(),
  };
}