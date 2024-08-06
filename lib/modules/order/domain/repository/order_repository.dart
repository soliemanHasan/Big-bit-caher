import 'package:big_bite_casher/modules/order/domain/parameters/order_parameters.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/order_entity.dart';

abstract class OrderRepository {
  Future<Either<Failure, List<OrderEntity>>> getOrder(
      OrderParameters parameters);
  
}
