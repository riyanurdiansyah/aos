import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_product.freezed.dart';
part 'data_product.g.dart';

@freezed
class DataProduct with _$DataProduct {
  const factory DataProduct({
    required int NO,
    required String productId,
    required String productName,
    required String productDescription,
    required String productValue,
    required String productType,
    required String productPhoto,
    @Default(0) int qty,
  }) = _DataProduct;

  factory DataProduct.fromJson(Map<String, dynamic> json) =>
      _$DataProductFromJson(json);
}
