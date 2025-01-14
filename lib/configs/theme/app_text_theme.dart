import 'package:flutter/material.dart';

class AppTextTheme {
  static double _getScaleFactor(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 1200) {
      return 1.3;
    } else if (screenWidth > 800) {
      return 1.2;
    }
    return 1.0;
  }

  static TextTheme buildResponsiveLightTextTheme(BuildContext context) {
    double scaleFactor = _getScaleFactor(context);
    return TextTheme();
  }

  static TextTheme buildResponsiveDarkTextTheme(BuildContext context) {
    double scaleFactor = _getScaleFactor(context);
    return TextTheme();
  }
}
