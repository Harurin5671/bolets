import 'package:bolets/configs/configs.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData buildLightTheme(BuildContext context) {
    return ThemeData(
      textTheme: AppTextTheme.buildResponsiveLightTextTheme(context),
      useMaterial3: true,
    );
  }

  static ThemeData buildDarkTheme(BuildContext context) {
    return ThemeData(
      textTheme: AppTextTheme.buildResponsiveDarkTextTheme(context),
      useMaterial3: true,
    );
  }
}
