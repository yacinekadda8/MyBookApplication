import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/Features/Splash/presentation/views/splash_view.dart';
import 'package:mybook/Features/home/presntation/views/home_view.dart';

abstract class AppRouter{

 static final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'homeView',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeView();
          },
        ),
      ],
    ),
  ],
);

}