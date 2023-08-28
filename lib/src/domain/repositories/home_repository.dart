import 'package:aos/src/domain/entities/product/product.dart';
import 'package:dartz/dartz.dart';

import '../../core/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure, Product>> getProducts();
}
