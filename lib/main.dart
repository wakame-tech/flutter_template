import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
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
    // TODO: initialize in a widget
    await Firebase.initializeApp();
    await installDependencies();

    runApp(ProviderScope(child: App()));
  }, (error, stackTrace) {
    // reporting error such as Sentry.io ...
  });
}
