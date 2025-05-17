import 'package:akselera/app/modules/place/views/place_detail_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_nav_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/place/bindings/place_binding.dart';
import '../modules/place/views/place_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
      curve: Curves.fastOutSlowIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
    GetPage(
      name: _Paths.HOME_NAV,
      page: () => const HomeNavView(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
      curve: Curves.fastOutSlowIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
      transition: Transition.fadeIn,
      curve: Curves.fastOutSlowIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
      transition: Transition.fadeIn,
      curve: Curves.fastOutSlowIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
    GetPage(
      name: _Paths.PLACE,
      page: () => const PlaceView(),
      binding: PlaceBinding(),
      transition: Transition.fadeIn,
      curve: Curves.fastOutSlowIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
    GetPage(
      name: _Paths.PLACE_DETAIL,
      page: () => const PlaceDetailView(),
      binding: PlaceBinding(),
      transition: Transition.fadeIn,
      curve: Curves.fastOutSlowIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
  ];
}
