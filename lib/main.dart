import 'package:aos/src/domain/entities_hive/product_hive.dart';
import 'package:aos/src/utils/routes.dart';
import 'package:aos/src/utils/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductHiveAdapter());
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
