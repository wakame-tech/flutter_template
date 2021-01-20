import 'package:flutter/cupertino.dart';
import 'package:flutter_template/presentation/pages/pages.dart';

// TODO: add routing guards
class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    '/counter': (BuildContext context) => new CounterPage(),
  };
}