// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      success: json['success'] as bool,
      message: json['message'] as String,
      errorMessage: json['errorMessage'] as String? ?? "",
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => DataProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'errorMessage': instance.errorMessage,
      'data': instance.data,
    };
