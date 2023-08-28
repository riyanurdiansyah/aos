import 'package:aos/src/bindings/home_binding.dart';
import 'package:aos/src/presentation/pages/cart_page.dart';
import 'package:aos/src/presentation/pages/home_page.dart';
import 'package:aos/src/utils/routes_name.dart';
import 'package:get/get.dart';

import '../bindings/cart_binding.dart';
import '../bindings/product_binding.dart';
import '../presentation/pages/product_page.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: AppRouteName.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouteName.product,
      page: () => ProductPage(),
      binding: ProductBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: AppRouteName.cart,
      page: () => CartPage(),
      binding: CartBinding(),
      transition: Transition.rightToLeft,
    )
  ];
}
