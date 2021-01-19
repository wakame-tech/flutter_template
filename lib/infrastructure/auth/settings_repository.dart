import 'package:flutter/material.dart';
import 'package:flutter_template/infrastructure/auth/i_settings_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepository implements ISettingsRepository {
  static const themePrefsKey = 'selectedTheme';

  const SettingsRepository({@required SharedPreferences pref}): _pref = pref;

  final SharedPreferences _pref;

  @override
  void setThemeMode(ThemeMode mode) {
    _pref.setInt(themePrefsKey, mode.index);
  }

  @override
  ThemeMode getThemeMode() {
    return _pref.getInt(themePrefsKey) ?? ThemeMode.system;
  }
}