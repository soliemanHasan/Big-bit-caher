part of 'show_order_bloc.dart';

abstract class ShowOrdersEvent extends Equatable {
  const ShowOrdersEvent();
  @override
  List<Object> get props => [];
}

class FetchOrdersFirstTimeEvent extends ShowOrdersEvent {
  const FetchOrdersFirstTimeEvent();
  @override
  List<Object> get props => [];
}

class LoadMoreOrders extends ShowOrdersEvent {
  const LoadMoreOrders();
  @override
  List<Object> get props => [];
}

class RefreshOrdersEvent extends ShowOrdersEvent {
  const RefreshOrdersEvent();
  @override
  List<Object> get props => [];
}
