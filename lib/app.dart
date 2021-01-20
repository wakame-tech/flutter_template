import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_template/presentation/controllers/theme_controller.dart';
import 'package:flutter_template/presentation/themes.dart';
import 'package:flutter_template/routes.dart';

// TODO: i10n
// <https://github.com/o1298098/Flutter-Movie/blob/master/lib/app.dart>
class App extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final mode = watch(themeSelectorProvider.state);
    final analytics = FirebaseAnalytics();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: mode,
      routes: Routes.routes,
      initialRoute: '/counter',
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
    );
  }
}