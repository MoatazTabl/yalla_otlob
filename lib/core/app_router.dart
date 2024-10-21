import 'package:dahab_delivery/core/app_strings.dart';
import 'package:dahab_delivery/features/admin/presentation/admin_home_page_screen.dart';
import 'package:dahab_delivery/features/auth/signin/presentation/sign_in_screen.dart';
import 'package:dahab_delivery/features/auth/signup/presentation/sign_up_screen.dart';
import 'package:dahab_delivery/features/driver/presentation/driver_home_page_screen.dart';
import 'package:dahab_delivery/features/partner/presentation/partner_home_page_screen.dart';
import 'package:dahab_delivery/features/user/presentation/user_home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      // Auth
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
    // Admin
    GoRoute(
        path: AppStrings.adminHomeScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const AdminHomePageScreen();
        },
      ),
    // Driver
    GoRoute(
        path: AppStrings.driverHomeScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const DriverHomePageScreen();
        },
      ),
    // Partner
    GoRoute(
        path: AppStrings.partnerHomeScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const PartnerHomePageScreen();
        },
      ),
    // User
    GoRoute(
        path: AppStrings.userHomeScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const UserHomePageScreen();
        },
      ),
    ],
  );
}
