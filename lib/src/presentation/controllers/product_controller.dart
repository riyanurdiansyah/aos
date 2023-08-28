import 'package:aos/src/domain/entities/data_product/data_product.dart';
import 'package:aos/src/domain/entities_hive/boxes.dart';
import 'package:aos/src/domain/entities_hive/product_hive.dart';
import 'package:aos/src/utils/constanta.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProductController extends GetxController {
  final Rx<DataProduct> _product = emptyDetailProduct.obs;
  Rx<DataProduct> get product => _product;

  @override
  void onInit() async {
    if (Get.arguments != null) {
      if (Get.arguments is DataProduct) {
        _product.value = Get.arguments;
      }
    }
    boxProduct = await Hive.openBox<ProductHive>("boxProduct");
    super.onInit();
  }

  ProductHive convertProductToHive(DataProduct data) {
    return ProductHive(
      NO: data.NO,
      productId: data.productId,
      productName: data.productName,
      productDescription: data.productDescription,
      productValue: data.productValue,
      productType: data.productType,
      productPhoto: data.productPhoto,
      qty: 1,
    );
  }

  void addedDataToDB(DataProduct data) {
    if (!boxProduct.containsKey("key_${data.productName}")) {
      final dataConvert = convertProductToHive(data);
      boxProduct.put("key_${data.productName}", dataConvert);
    }
  }
}
