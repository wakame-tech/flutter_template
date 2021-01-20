// <https://zenn.dev/riscait/articles/theme-selector-with-riverpod-statenotifier>
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/services/settings_service.dart';

class ThemeSelector extends StateNotifier<ThemeMode> {
  ThemeSelector({@required this.reader, @required this.settingsService})
      : super(ThemeMode.system) {
    initialize();
  }

  final Reader reader;
  final SettingsService settingsService;

  Future initialize() async {
    state = _theme;
  }

  Future change(ThemeMode theme) async {
    _save(theme);
    state = theme;
  }

  ThemeMode get _theme => settingsService.getThemeMode();

  void _save(ThemeMode mode) {
    settingsService.saveThemeMode(mode);
  }
}
