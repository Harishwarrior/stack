import 'package:flutter/material.dart';

import '../styles/styles.dart';

class AppTheme {
  /// dark theme
  static ThemeData get dark => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Styles.primaryColor,
        scaffoldBackgroundColor: Styles.scaffoldBackgroundColor,
        backgroundColor: Styles.backgroundColor,
      );
}
