import 'package:flutter/material.dart';

abstract class ISettingsRepository {
  void setThemeMode(ThemeMode mode);

  ThemeMode getThemeMode();
}