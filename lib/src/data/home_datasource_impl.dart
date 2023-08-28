import 'package:aos/src/data/home_datasource.dart';
import 'package:aos/src/utils/constanta.dart';
import 'package:dio/dio.dart';

import '../core/dio_options.dart';

class HomeDataSourceImpl implements HomeDataSource {
  late Dio dio;

  HomeDataSourceImpl({Dio? dio}) {
    this.dio = dio ?? Dio();
  }

  @override
  Future<Response> getProducts() async {
    return await dio.post(
      url,
      data: bodyListProduct,
      options: dioOption(),
    );
  }

  @override
  Future<Response> getSales() async {
    return await dio.post(
      url,
      data: bodyListSales,
      options: dioOption(),
    );
  }

  @override
  Future<Response> insertSales() async {
    // TODO: implement insertSales
    throw UnimplementedError();
  }
}
