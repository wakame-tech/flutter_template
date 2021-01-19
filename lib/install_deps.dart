import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_template/infrastructure/auth/settings_repository.dart';
import 'package:flutter_template/services/settings_service.dart';
import 'package:flutter_template/util/env_keys.dart';
import 'package:flutter_template/util/logger.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> installDependencies() async {
  const env_path = bool.hasEnvironment('ENV_PATH') ?
    String.fromEnvironment('ENV_PATH') : 'secrets/.env';

  // load .env
  await DotEnv.load(fileName: env_path);
  final env = EnvKeys.fromEnv(env: DotEnv.env);
  GetIt.I.registerSingleton<EnvKeys>(env);
  logger.info('Env loaded');

  final pref = await SharedPreferences.getInstance();
  GetIt.I.registerSingleton<SharedPreferences>(pref);

  final settingsRepo = SettingsRepository(pref: pref);
  final settingsService = SettingsService(settingsRepository: settingsRepo);
  GetIt.I.registerSingleton<SettingsService>(settingsService);
}