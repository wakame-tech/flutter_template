import 'dart:io';

import 'package:flutter/foundation.dart';

// Environment Variables manager
class EnvKeys {
  final String exampleSecret;

  EnvKeys({
    @required this.exampleSecret,
  });

  factory EnvKeys.fromEnv({
    @required Map<String, String> env,
  }) {
    assert(env.containsKey('EXAMPLE_SECRET'));

    return EnvKeys(
        exampleSecret: env['EXAMPLE_SECRET'],
    );
  }
}