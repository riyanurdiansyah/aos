import 'package:aos/src/domain/entities/data_product/data_product.dart';
import 'package:aos/src/utils/constanta.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final Rx<DataProduct> _product = emptyDetailProduct.obs;
  Rx<DataProduct> get product => _product;

  @override
  void onInit() {
    if (Get.arguments != null) {
      if (Get.arguments is DataProduct) {
        _product.value = Get.arguments;
      }
    }
    super.onInit();
  }
}
