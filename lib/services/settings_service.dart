import 'package:flutter/material.dart';
import 'file:///D:/dev/flutter_template/lib/infrastructure/settings/i_settings_repository.dart';

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