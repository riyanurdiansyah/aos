import 'package:aos/src/utils/routes.dart';
import 'package:aos/src/utils/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ConnectivityAppWrapper(
      app: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AOS Test',
        themeMode: ThemeMode.dark,
        getPages: AppRoutes.routes,
        initialRoute: AppRouteName.home,
      ),
    );
  }
}
