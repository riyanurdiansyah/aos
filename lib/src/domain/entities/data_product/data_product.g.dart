// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataProduct _$$_DataProductFromJson(Map<String, dynamic> json) =>
    _$_DataProduct(
      NO: json['NO'] as int,
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      productDescription: json['productDescription'] as String,
      productValue: json['productValue'] as String,
      productType: json['productType'] as String,
      productPhoto: json['productPhoto'] as String,
      qty: json['qty'] as int? ?? 0,
    );

Map<String, dynamic> _$$_DataProductToJson(_$_DataProduct instance) =>
    <String, dynamic>{
      'NO': instance.NO,
      'productId': instance.productId,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productValue': instance.productValue,
      'productType': instance.productType,
      'productPhoto': instance.productPhoto,
      'qty': instance.qty,
    };
