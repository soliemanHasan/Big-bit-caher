import 'package:big_bite_casher/modules/order/domain/parameters/order_parameters.dart';

import '../models/order_model.dart';

abstract class OrderDataSource {
  Future<List<OrderModel>> getOrders(OrderParameters parameters);
}
