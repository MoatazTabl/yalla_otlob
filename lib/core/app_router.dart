import 'package:dahab_delivery/core/app_strings.dart';
import 'package:dahab_delivery/features/auth/signin/presentation/sign_in_screen.dart';
import 'package:dahab_delivery/features/auth/signup/presentation/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: AppStrings.loginScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const SignInScreen();
        },
      ),
      GoRoute(
        path: AppStrings.signupScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpScreen();
        },
      ),
    ],
  );
}
