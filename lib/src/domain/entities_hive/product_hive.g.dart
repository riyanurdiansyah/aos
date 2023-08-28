// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductHiveAdapter extends TypeAdapter<ProductHive> {
  @override
  final int typeId = 1;

  @override
  ProductHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductHive(
      NO: fields[0] as int,
      productId: fields[1] as String,
      productName: fields[2] as String,
      productDescription: fields[3] as String,
      productValue: fields[4] as String,
      productType: fields[5] as String,
      productPhoto: fields[6] as String,
      qty: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ProductHive obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.NO)
      ..writeByte(1)
      ..write(obj.productId)
      ..writeByte(2)
      ..write(obj.productName)
      ..writeByte(3)
      ..write(obj.productDescription)
      ..writeByte(4)
      ..write(obj.productValue)
      ..writeByte(5)
      ..write(obj.productType)
      ..writeByte(6)
      ..write(obj.productPhoto)
      ..writeByte(7)
      ..write(obj.qty);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
