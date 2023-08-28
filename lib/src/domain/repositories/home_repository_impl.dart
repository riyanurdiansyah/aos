import 'dart:convert';

import 'package:aos/src/core/failure.dart';
import 'package:aos/src/data/home_datasource.dart';
import 'package:aos/src/domain/entities/data_product/data_product.dart';
import 'package:aos/src/domain/entities/product/product.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource _datasource;

  HomeRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, Product>> getProducts() async {
    try {
      List<DataProduct> products = [];
      final response = await _datasource.getProducts();
      // if (kDebugMode) {
      //   print(response.data);
      // }
      if (response.statusCode != 200) {
        return Left(HttpFailure(
            response.statusCode ?? 400, response.statusMessage ?? ""));
      }
      final Map<String, dynamic> jsonMap = json.decode(response.data["data"]);
      final List<dynamic> productJsonList = jsonMap['Table'];
      for (var data in productJsonList) {
        products.add(DataProduct.fromJson(data));
      }
      return Right(
        Product(
          success: response.data["success"],
          message: response.data["message"],
          data: products,
        ),
      );
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return Left(HttpFailure(500, e.toString()));
    }
  }
}
