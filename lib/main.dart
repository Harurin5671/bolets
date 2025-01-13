import 'package:flutter/material.dart';

import 'package:bolets/configs/configs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      darkTheme: AppTheme.buildDarkTheme(context),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.buildLightTheme(context),
      themeMode: ThemeMode.light,
      title: 'Bolets',
      routerConfig: appRouter,
    );
  }
}
