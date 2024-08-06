import '../../../../core/utils/base_parameters.dart';

class OrderParameters extends BaseParameters {
  final int page;

  const OrderParameters({required this.page});

  @override
  Map<String, dynamic> toJson() => {};
  @override
  List<Object> get props => [page ];
}
