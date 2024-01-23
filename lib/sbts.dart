import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sbts/utils/custom_theme.dart';
import 'package:sbts/utils/routes.dart';

class SBTS extends StatefulWidget {
  const SBTS({super.key});

  @override
  State<SBTS> createState() => _SBTSState();
}

class _SBTSState extends State<SBTS> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customTheme,
      routes: routes,
    );
  }
}
