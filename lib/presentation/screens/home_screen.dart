import 'package:flutter/material.dart';

import 'package:bolets/presentation/presentation.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';
  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      child: const Center(
        child: Text('Soy el Home'),
      ),
    );
  }
}