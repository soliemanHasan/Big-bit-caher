import 'package:big_bite_casher/modules/order/domain/parameters/order_parameters.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors_handler.dart';
import '../../../../core/errors/failure.dart';
import '../../domain/entities/order_entity.dart';
import '../../domain/repository/order_repository.dart';
import '../data_source/order_remote_data_source.dart';

class OrderRepositoryImp extends OrderRepository {
  final OrderDataSource homeDataSource;
  OrderRepositoryImp(this.homeDataSource);

  @override
  Future<Either<Failure, List<OrderEntity>>> getOrder(
      OrderParameters parameters) async {
    return ErrorsHandler.handleEither(
        () => homeDataSource.getOrders(parameters));
  }
}
