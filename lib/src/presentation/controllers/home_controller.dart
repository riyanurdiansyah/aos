import 'package:aos/src/core/failure.dart';
import 'package:aos/src/data/home_datasource.dart';
import 'package:aos/src/data/home_datasource_impl.dart';
import 'package:aos/src/domain/entities/product/product.dart';
import 'package:aos/src/domain/repositories/home_repository.dart';
import 'package:aos/src/domain/repositories/home_repository_impl.dart';
import 'package:get/get.dart';

import '../../utils/constanta.dart';

class HomeController extends GetxController {
  late HomeRepository _homeRepository;
  late HomeDataSource _homeDataSource;

  final RxInt _indexBanner = 0.obs;
  RxInt get indexBanner => _indexBanner;

  final RxInt _indexNavbar = 0.obs;
  RxInt get indexNavbar => _indexNavbar;

  final RxBool _isLoading = true.obs;
  RxBool get isLoading => _isLoading;

  final Rx<Product> _product = emptyProduct.obs;
  Rx<Product> get product => _product;

  @override
  void onInit() async {
    _homeDataSource = HomeDataSourceImpl();
    _homeRepository = HomeRepositoryImpl(_homeDataSource);

    await getProducts();

    super.onInit();
  }

  Future<void> getProducts() async {
    final response = await _homeRepository.getProducts();
    response.fold((fail) {
      if (fail is HttpFailure) {
        return _product.value.copyWith(errorMessage: fail.message);
      } else {
        return _product.value
            .copyWith(errorMessage: "Failed connect to server");
      }
    }, (data) => _product.value = data);
  }

  void onChangeNavbar(int i) {
    _indexNavbar.value = i;
  }

  void onSlide(int index) {
    _indexBanner.value = index;
  }
}
