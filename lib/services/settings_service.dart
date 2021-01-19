import 'package:flutter/material.dart';
import 'package:flutter_template/infrastructure/auth/i_settings_repository.dart';

class SettingsService {
  const SettingsService({@required ISettingsRepository settingsRepository})
      : _settingsRepository = settingsRepository;

  final ISettingsRepository _settingsRepository;

  void saveThemeMode(ThemeMode mode) {
    _settingsRepository.setThemeMode(mode);
  }

  ThemeMode getThemeMode() {
    return _settingsRepository.getThemeMode();
  }
}