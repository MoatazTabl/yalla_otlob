import 'package:yalla_otlob/core/app_strings.dart';
import 'package:yalla_otlob/features/admin/presentation/admin_home_page_screen.dart';
import 'package:yalla_otlob/features/auth/signin/presentation/sign_in_screen.dart';
import 'package:yalla_otlob/features/auth/signup/presentation/sign_up_screen.dart';
import 'package:yalla_otlob/features/driver/presentation/driver_home_page_screen.dart';
import 'package:yalla_otlob/features/partner/market/presentation/partner_market_screen_page.dart';
import 'package:yalla_otlob/features/partner/pharmacy/presentation/partner_pharmacy_screen_page.dart';
import 'package:yalla_otlob/features/partner/restaurant/presentation/partner_restaurant_screen_page.dart';
import 'package:yalla_otlob/features/partner/wsly/presentation/partner_wsly_screen_page.dart';
import 'package:yalla_otlob/features/user/market/manager/market_cubit.dart';
import 'package:yalla_otlob/features/user/market/presentation/user_available_markets_page_screen.dart';
import 'package:yalla_otlob/features/user/pharmacy/presentation/user_available_pharmacy_page_screen.dart';
import 'package:yalla_otlob/features/user/pickup/manager/pick_up_cubit.dart';
import 'package:yalla_otlob/features/user/pickup/presentation/user_pickup_screen_page.dart';
import 'package:yalla_otlob/features/user/restaurant/manager/menu_cubit.dart';
import 'package:yalla_otlob/features/user/restaurant/presentation/user_confirm_page_screen.dart';
import 'package:yalla_otlob/features/user/presentation/user_main_page_screen.dart';
import 'package:yalla_otlob/features/user/market/presentation/user_market_page_screen.dart';
import 'package:yalla_otlob/features/user/restaurant/presentation/user_order_detail_page_screen.dart';
import 'package:yalla_otlob/features/user/pharmacy/presentation/user_pharmacy_page_screen.dart';
import 'package:yalla_otlob/features/user/restaurant/presentation/user_restaurant_detail_page.dart';
import 'package:yalla_otlob/features/user/restaurant/presentation/user_restaurant_page_screen.dart';
import 'package:yalla_otlob/features/user/settigns/presentation/user_about_screen_page.dart';
import 'package:yalla_otlob/features/user/settigns/presentation/user_profile_screen_page.dart';
import 'package:yalla_otlob/features/user/wsly/presentation/user_wsly_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../features/user/pharmacy/manager/pharmacy_cubit.dart';

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

      // Restaurant
      GoRoute(
        path: AppStrings.restaurantHomeScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const PartnerRestaurantScreenPage();
        },
      ),

      // Pharmacy
      GoRoute(
        path: AppStrings.pharmacyHomeScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const PartnerPharmacyScreenPage();
        },
      ),

      // Market
      GoRoute(
        path: AppStrings.marketHomeScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const PartnerMarketScreenPage();
        },
      ),

      // Wsly
      GoRoute(
        path: AppStrings.wslyHomeScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const PartnerWslyScreenPage();
        },
      ),

      // User
      GoRoute(
        path: AppStrings.userMainScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const UserMainPageScreen();
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
            create: (context) => PharmacyCubit(),
            child: UserPharmacyPageScreen(heroTag: state.extra as String,),
          );
        },
      ),
      GoRoute(
        path: AppStrings.userAvailablePharmacyScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const UserAvailablePharmacyPageScreen();
        },
      ),
      GoRoute(
        path: AppStrings.userWslyScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const UserWslyScreenPage();
        },
      ),
      GoRoute(
        path: AppStrings.userPickUpScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(create: (BuildContext context)  =>PickUpCubit(),
          child: const UserPickUpScreenPage());
        },
      ),
      GoRoute(
        path: AppStrings.userMarketScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (BuildContext context) => MarketCubit(),
            child: UserMarketPageScreen(
              heroTag: state.extra as String,
            ),
          );
        },
      ),
      GoRoute(
        path: AppStrings.userAvailableMarketScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const UserAvailableMarketsPageScreen();
        },
      ),
      // Settings
      GoRoute(path:AppStrings.userAboutScreenRoute,
        builder: (context, state) {
          return const UserAboutScreenPage();
        },
      ),
    GoRoute(path:AppStrings.userProfileScreenRoute,
        builder: (context, state) {
          return const UserProfileScreenPage();
        },
      )
    ],
  );
}
