import 'package:dahab_delivery/core/app_strings.dart';
import 'package:dahab_delivery/features/admin/presentation/admin_home_page_screen.dart';
import 'package:dahab_delivery/features/auth/signin/presentation/sign_in_screen.dart';
import 'package:dahab_delivery/features/auth/signup/presentation/sign_up_screen.dart';
import 'package:dahab_delivery/features/driver/presentation/driver_home_page_screen.dart';
import 'package:dahab_delivery/features/partner/presentation/partner_home_page_screen.dart';
import 'package:dahab_delivery/features/user/manager/market_cubit.dart';
import 'package:dahab_delivery/features/user/manager/menu_cubit.dart';
import 'package:dahab_delivery/features/user/manager/pharmacy_cubit.dart';
import 'package:dahab_delivery/features/user/presentation/user_confirm_page_screen.dart';
import 'package:dahab_delivery/features/user/presentation/user_history_page_screen.dart';
import 'package:dahab_delivery/features/user/presentation/user_main_page_screen.dart';
import 'package:dahab_delivery/features/user/presentation/user_market_page_screen.dart';
import 'package:dahab_delivery/features/user/presentation/user_order_detail_page_screen.dart';
import 'package:dahab_delivery/features/user/presentation/user_pharmacy_page_screen.dart';
import 'package:dahab_delivery/features/user/presentation/user_restaurant_detail_page.dart';
import 'package:dahab_delivery/features/user/presentation/user_restaurant_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          return const UserMainPageScreen();
        },
      ),
      GoRoute(
        path: AppStrings.userHistoryScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const UserHistoryPageScreen();
        },
      ),
      GoRoute(
        path: AppStrings.userRestaurantScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const UserRestaurantPageScreen();
        },
      ),
      GoRoute(
        path: AppStrings.userRestaurantDetailScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => MenuCubit(),
            child: UserRestaurantDetailPage(
              heroTag: state.extra as String,
            ),
          );
        },
      ),
      GoRoute(
        path: AppStrings.userOrderDetailScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const UserOrderDetailPageScreen();
        },
      ),
      GoRoute(
        path: AppStrings.userConfirmScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const UserConfirmPageScreen();
        },
      ),
      GoRoute(
        path: AppStrings.userPharmacyScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create:(context) =>  PharmacyCubit(),
            child: const UserPharmacyPageScreen(),
          );
        },
      ),
      GoRoute(
        path: AppStrings.userMarketScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(create: (BuildContext context)  =>MarketCubit(),
          child: const UserMarketPageScreen());
        },
      ),
    ],
  );
}
