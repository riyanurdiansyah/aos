import 'package:dio/dio.dart';

abstract class HomeDataSource {
  Future<Response> getProducts();

  Future<Response> getSales();

  Future<Response> insertSales();
}
