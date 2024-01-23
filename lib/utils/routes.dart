import 'package:flutter/material.dart';
import 'package:sbts/view/change_password.dart';
import 'package:sbts/view/dashboard.dart';
import 'package:sbts/view/forgot_password.dart';
import 'package:sbts/view/login.dart';
import 'package:sbts/view/splash_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  SplashScreen.routeName: (_) => const SplashScreen(),
  Login.routeName: (_) => const Login(),
  ChangePassword.routeName: (_) => const ChangePassword(),
  ForgotPassword.routeName: (_) => const ForgotPassword(),
  Dashboard.routeName: (_) => const Dashboard(),
};
