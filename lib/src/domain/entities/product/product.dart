import 'package:freezed_annotation/freezed_annotation.dart';

import '../data_product/data_product.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required bool success,
    required String message,
    @Default("") String errorMessage,
    @Default([]) List<DataProduct> data,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
