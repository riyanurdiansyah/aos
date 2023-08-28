import 'package:hive/hive.dart';

part 'product_hive.g.dart';

@HiveType(typeId: 1)
class ProductHive {
  ProductHive({
    required this.NO,
    required this.productId,
    required this.productName,
    required this.productDescription,
    required this.productValue,
    required this.productType,
    required this.productPhoto,
    required this.qty,
  });

  @HiveField(0)
  int NO;

  @HiveField(1)
  String productId;

  @HiveField(2)
  String productName;

  @HiveField(3)
  String productDescription;

  @HiveField(4)
  String productValue;

  @HiveField(5)
  String productType;

  @HiveField(6)
  String productPhoto;

  @HiveField(7)
  int qty;
}
