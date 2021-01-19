import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/install_deps.dart';

import 'app.dart';

void main() async {
  // override flutter error
  // <https://flutter.dev/docs/cookbook/maintenance/error-reporting>
  FlutterError.onError = (FlutterErrorDetails details) {
    if (true) {
      // In development mode, simply print to console.
      FlutterError.dumpErrorToConsole(details);
    } else {
      // reporting error such as Sentry.io ...
    }
  };

  runZonedGuarded<Future>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await installDependencies();

    runApp(ProviderScope(child: MyApp()));
  }, (error, stackTrace) {
    // reporting error such as Sentry.io ...
  });
}
