// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataProduct _$DataProductFromJson(Map<String, dynamic> json) {
  return _DataProduct.fromJson(json);
}

/// @nodoc
mixin _$DataProduct {
  int get NO => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productDescription => throw _privateConstructorUsedError;
  String get productValue => throw _privateConstructorUsedError;
  String get productType => throw _privateConstructorUsedError;
  String get productPhoto => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataProductCopyWith<DataProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataProductCopyWith<$Res> {
  factory $DataProductCopyWith(
          DataProduct value, $Res Function(DataProduct) then) =
      _$DataProductCopyWithImpl<$Res, DataProduct>;
  @useResult
  $Res call(
      {int NO,
      String productId,
      String productName,
      String productDescription,
      String productValue,
      String productType,
      String productPhoto,
      int qty});
}

/// @nodoc
class _$DataProductCopyWithImpl<$Res, $Val extends DataProduct>
    implements $DataProductCopyWith<$Res> {
  _$DataProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? NO = null,
    Object? productId = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? productValue = null,
    Object? productType = null,
    Object? productPhoto = null,
    Object? qty = null,
  }) {
    return _then(_value.copyWith(
      NO: null == NO
          ? _value.NO
          : NO // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productValue: null == productValue
          ? _value.productValue
          : productValue // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      productPhoto: null == productPhoto
          ? _value.productPhoto
          : productPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataProductCopyWith<$Res>
    implements $DataProductCopyWith<$Res> {
  factory _$$_DataProductCopyWith(
          _$_DataProduct value, $Res Function(_$_DataProduct) then) =
      __$$_DataProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int NO,
      String productId,
      String productName,
      String productDescription,
      String productValue,
      String productType,
      String productPhoto,
      int qty});
}

/// @nodoc
class __$$_DataProductCopyWithImpl<$Res>
    extends _$DataProductCopyWithImpl<$Res, _$_DataProduct>
    implements _$$_DataProductCopyWith<$Res> {
  __$$_DataProductCopyWithImpl(
      _$_DataProduct _value, $Res Function(_$_DataProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? NO = null,
    Object? productId = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? productValue = null,
    Object? productType = null,
    Object? productPhoto = null,
    Object? qty = null,
  }) {
    return _then(_$_DataProduct(
      NO: null == NO
          ? _value.NO
          : NO // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productValue: null == productValue
          ? _value.productValue
          : productValue // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      productPhoto: null == productPhoto
          ? _value.productPhoto
          : productPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataProduct implements _DataProduct {
  const _$_DataProduct(
      {required this.NO,
      required this.productId,
      required this.productName,
      required this.productDescription,
      required this.productValue,
      required this.productType,
      required this.productPhoto,
      this.qty = 0});

  factory _$_DataProduct.fromJson(Map<String, dynamic> json) =>
      _$$_DataProductFromJson(json);

  @override
  final int NO;
  @override
  final String productId;
  @override
  final String productName;
  @override
  final String productDescription;
  @override
  final String productValue;
  @override
  final String productType;
  @override
  final String productPhoto;
  @override
  @JsonKey()
  final int qty;

  @override
  String toString() {
    return 'DataProduct(NO: $NO, productId: $productId, productName: $productName, productDescription: $productDescription, productValue: $productValue, productType: $productType, productPhoto: $productPhoto, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataProduct &&
            (identical(other.NO, NO) || other.NO == NO) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.productValue, productValue) ||
                other.productValue == productValue) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.productPhoto, productPhoto) ||
                other.productPhoto == productPhoto) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, NO, productId, productName,
      productDescription, productValue, productType, productPhoto, qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataProductCopyWith<_$_DataProduct> get copyWith =>
      __$$_DataProductCopyWithImpl<_$_DataProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataProductToJson(
      this,
    );
  }
}

abstract class _DataProduct implements DataProduct {
  const factory _DataProduct(
      {required final int NO,
      required final String productId,
      required final String productName,
      required final String productDescription,
      required final String productValue,
      required final String productType,
      required final String productPhoto,
      final int qty}) = _$_DataProduct;

  factory _DataProduct.fromJson(Map<String, dynamic> json) =
      _$_DataProduct.fromJson;

  @override
  int get NO;
  @override
  String get productId;
  @override
  String get productName;
  @override
  String get productDescription;
  @override
  String get productValue;
  @override
  String get productType;
  @override
  String get productPhoto;
  @override
  int get qty;
  @override
  @JsonKey(ignore: true)
  _$$_DataProductCopyWith<_$_DataProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
