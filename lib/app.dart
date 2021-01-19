import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_template/presentation/controllers/theme_controller.dart';
import 'package:flutter_template/presentation/pages/counter_page.dart';
import 'package:flutter_template/presentation/themes.dart';

final routes = [
  {
    'name': 'CounterPage',
    'route': '/counter',
    'builder': (BuildContext context) => new CounterPage(),
  }
];

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final mode = watch(themeSelectorProvider.state);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: mode,
      routes: Map.fromEntries(routes.map((e) => MapEntry(e['route'], e['builder']))),
      initialRoute: '/counter',
    );
  }
}