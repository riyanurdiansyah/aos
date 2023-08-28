import 'package:aos/src/domain/entities/data_product/data_product.dart';
import 'package:aos/src/domain/entities/default/default_response.dart';
import 'package:aos/src/domain/entities_hive/boxes.dart';
import 'package:aos/src/utils/constanta.dart';
import 'package:aos/src/utils/dialog.dart';
import 'package:aos/src/utils/routes_name.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../core/failure.dart';
import '../../data/home_datasource.dart';
import '../../data/home_datasource_impl.dart';
import '../../domain/entities_hive/product_hive.dart';
import '../../domain/repositories/home_repository.dart';
import '../../domain/repositories/home_repository_impl.dart';

class CartController extends GetxController {
  late HomeRepository _homeRepository;
  late HomeDataSource _homeDataSource;

  final RxList<DataProduct> _products = <DataProduct>[].obs;
  RxList<DataProduct> get products => _products;

  final Rx<DefaultResponse> _responseInsert = emptyDefaultResponse.obs;
  Rx<DefaultResponse> get responseInsert => _responseInsert;

  final Rx<double> _total = 0.0.obs;
  Rx<double> get total => _total;

  final Rx<bool> _isLoading = false.obs;
  Rx<bool> get isLoading => _isLoading;

  @override
  void onInit() async {
    _homeDataSource = HomeDataSourceImpl();
    _homeRepository = HomeRepositoryImpl(_homeDataSource);
    boxProduct = await Hive.openBox<ProductHive>("boxProduct");
    getCartData();
    super.onInit();
  }

  DataProduct convertToDataProduct(ProductHive data) {
    return DataProduct(
      NO: data.NO,
      productId: data.productId,
      productName: data.productName,
      productDescription: data.productDescription,
      productValue: data.productValue,
      productType: data.productType,
      productPhoto: data.productPhoto,
      qty: data.qty,
    );
  }

  void getCartData() {
    for (int i = 0; i < boxProduct.length; i++) {
      ProductHive data = boxProduct.getAt(i);
      _products.add(convertToDataProduct(data));
    }

    calculateTotal();
  }

  void calculateTotal() {
    _total.value = 0;
    for (int i = 0; i < _products.length; i++) {
      _total.value += int.parse(_products[i].productValue) * _products[i].qty;
    }
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
      qty: data.qty,
    );
  }

  void increaseCart(int index) {
    _products[index] = _products[index].copyWith(
      qty: _products[index].qty + 1,
    );
    calculateTotal();
    final convertToProductHive = convertProductToHive(_products[index]);
    boxProduct.putAt(index, convertToProductHive);
  }

  void decreaseCart(int index) {
    if (_products[index].qty == 1) {
      AppDialog.dialogConfirmDeleteCart(() {
        _products.removeAt(index);
        boxProduct.deleteAt(index);
        Get.back();
      });
    } else {
      _products[index] = _products[index].copyWith(
        qty: _products[index].qty - 1,
      );
      calculateTotal();
      final convertToProductHive = convertProductToHive(_products[index]);
      boxProduct.putAt(index, convertToProductHive);
    }
  }

  Future<void> checkout() async {
    AppDialog.loadingAuthNotDismissableDialog();
    _isLoading.value = true;
    final response = await _homeRepository.insertSales();
    Future.delayed(const Duration(milliseconds: 1500), () {
      response.fold((fail) {
        if (fail is HttpFailure) {
          Get.offAllNamed(AppRouteName.home);
          AppDialog.errorAuthDialog(fail.message);
          return _responseInsert.value
              .copyWith(success: false, message: fail.message);
        } else {
          Get.offAllNamed(AppRouteName.home);
          AppDialog.errorAuthDialog("Failed to checkout");
          return _responseInsert.value
              .copyWith(success: false, message: "Failed connect to server");
        }
      }, (data) {
        Get.offAllNamed(AppRouteName.home);
        if (data.success == true) {
          AppDialog.successAuthDialog("Berhasil checkout");
        } else {
          AppDialog.errorAuthDialog(data.message);
        }
      });
    });
    _isLoading.value = false;
  }
}
