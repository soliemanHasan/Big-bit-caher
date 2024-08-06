import 'dart:async';
import 'package:big_bite_casher/core/utils/base_pagination_bloc/pagination_bloc.dart';
import 'package:big_bite_casher/core/utils/base_pagination_bloc/pagination_state.dart';
import 'package:big_bite_casher/modules/order/domain/parameters/order_parameters.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/order_entity.dart';
import '../../../domain/repository/order_repository.dart';
part 'show_order_event.dart';


class ShowOrderBloc extends PaginationBloc<ShowOrdersEvent, OrderEntity> {
  final OrderRepository orderRepository;

  ShowOrderBloc(this.orderRepository) : super(initialPage: 1) {
    on<FetchOrdersFirstTimeEvent>(fetchDataFirstTime,
        transformer: restartable());
    on<LoadMoreOrders>(loadMoreData, transformer: restartable());
    on<RefreshOrdersEvent>(refresh, transformer: restartable());
  }

  @override
  FutureOr<void> fetchDataFirstTime(ShowOrdersEvent event,
      Emitter<PaginationState<List<OrderEntity>>> emit) async {
    event as FetchOrdersFirstTimeEvent;
    emit(state.loading());
    final result =
        await orderRepository.getOrder(OrderParameters(page: state.page));

    handleResult(result, emit);
  }

  @override
  FutureOr<void> loadMoreData(ShowOrdersEvent event,
      Emitter<PaginationState<List<OrderEntity>>> emit) async {
    event as LoadMoreOrders;

    final result =
        await orderRepository.getOrder(OrderParameters(page: (state.page)));
    handleResult(result, emit);
  }

  @override
  FutureOr<void> refresh(ShowOrdersEvent event,
      Emitter<PaginationState<List<OrderEntity>>> emit) async {
    event as RefreshOrdersEvent;
    emit(state.refresh());
  }
}
