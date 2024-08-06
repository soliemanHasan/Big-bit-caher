import 'package:big_bite_casher/modules/order/domain/parameters/order_parameters.dart';

import '../../../../core/constants/apis_urls.dart';
import '../../../../core/services/api_services.dart';
import '../../../../core/utils/app_response.dart';
import '../models/order_model.dart';
import 'order_remote_data_source.dart';

class OrderDataSourceImp extends OrderDataSource {
  @override
  Future<List<OrderModel>> getOrders(OrderParameters parameters) async {
    AppResponse response =
        await ApiServices().get(ApisUrls().getOrder(parameters.page));

    return (response.data["data"]["data"] as List)
        .map((element) => OrderModel.fromJson(element))
        .toList();
  }
}
