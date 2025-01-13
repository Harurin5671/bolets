import 'package:flutter/material.dart';

class ScreenLayout extends StatelessWidget {
  final double appBarHeight;
  final Widget? appBarTitle;
  final List<Widget>? appBarActions;
  final Widget? customButtonBack;
  final Color backgroundAppBarColor;
  final Color? backgroundScaffoldColor;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget child;

  const ScreenLayout({
    super.key,
    this.appBarHeight = 0,
    this.appBarTitle,
    this.appBarActions,
    this.backgroundAppBarColor = Colors.black,
    this.backgroundScaffoldColor,
    this.customButtonBack,
    this.floatingActionButton,
    this.floatingActionButtonLocation = FloatingActionButtonLocation.endFloat,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appBarHeight),
          child: AppBar(
            backgroundColor: backgroundAppBarColor,
            title: appBarTitle,
            actions: appBarActions,
            leading: customButtonBack,
          ),
        ),
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        backgroundColor: backgroundScaffoldColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
