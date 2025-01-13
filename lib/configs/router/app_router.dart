import 'package:go_router/go_router.dart';

import 'package:bolets/presentation/presentation.dart';

final appRouter = GoRouter(
  initialLocation: HomeScreen.routeName,
  routes: <GoRoute>[
    GoRoute(
      path: HomeScreen.routeName,
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
