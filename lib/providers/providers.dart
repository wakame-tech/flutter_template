import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/controllers/counter/counter_page_controller.dart';
import 'package:flutter_template/controllers/navigation_controller.dart';
import 'package:flutter_template/controllers/signin/signin_page_controller.dart';
import 'package:flutter_template/controllers/theme_controller.dart';
import 'package:flutter_template/services/auth_service.dart';
import 'package:flutter_template/services/settings_service.dart';
import 'package:get_it/get_it.dart';

final navigationProvider = StateNotifierProvider((ref) => NavigationController());

final themeSelectorProvider = StateNotifierProvider(
  (ref) => ThemeSelector(
    reader: ref.read,
    settingsService: GetIt.I<SettingsService>(),
  ),
);

// TODO: naming
final counterPageControllerProvider = StateNotifierProvider(
  (ref) => CounterPageController(ref.read),
);

final signinPageControllerProvider = StateNotifierProvider(
  (ref) => SigninPageController(
    reader: ref.read,
    authService: GetIt.I<AuthService>(),
  ),
);
