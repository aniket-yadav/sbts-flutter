import 'package:flutter/material.dart';
import 'package:sbts/view/splash_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  SplashScreen.routeName: (_) => const SplashScreen(),
};
