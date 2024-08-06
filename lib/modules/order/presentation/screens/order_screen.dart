import 'package:big_bite_casher/core/constants/app_colors.dart';
import 'package:big_bite_casher/core/core_component/app_button.dart';
import 'package:big_bite_casher/core/core_component/failure_component.dart';
import 'package:big_bite_casher/core/core_component/loading_component.dart';
import 'package:big_bite_casher/core/core_component/pagination_list_view_component.dart';
import 'package:big_bite_casher/core/errors/failure.dart';
import 'package:big_bite_casher/core/services/service_locator.dart';
import 'package:big_bite_casher/core/utils/base_pagination_bloc/pagination_state.dart';
import 'package:big_bite_casher/modules/order/domain/entities/order_entity.dart';
import 'package:big_bite_casher/modules/order/presentation/blocs/order_bloc/show_order_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  void initState() {
    super.initState();
    final orderBloc = sl<ShowOrderBloc>();
    orderBloc.add(const RefreshOrdersEvent());
    orderBloc.add(const FetchOrdersFirstTimeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ShowOrderBloc, PaginationState<List<OrderEntity>>>(
        bloc: sl<ShowOrderBloc>(),
        builder: (context, state) {
          if (state.isError) {
            return FailureComponent(failure: Failure(state.errorMessage));
          } else if (state.isSuccess) {
            return PaginatedListView(
              itemBuilder: (index) {
                final order = state.data![index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OrderItem(order: order),
                );
              },
              onCallMoreData: () {
                sl<ShowOrderBloc>().add(const LoadMoreOrders());
              },
              state: state,
            );
          } else {
            return const LoadingComponent();
          }
        },
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final OrderEntity order;

  const OrderItem({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.bookComponentColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (order.meals.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: order.meals.map((meal) {
                  return MyOrderMealComponent(meal: meal);
                }).toList(),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: order.drinks.map((drink) {
                return MyOrderDrinkComponent(drinkEntity: drink);
              }).toList(),
            ),
          ),
          Dash(
              direction: Axis.horizontal,
              length: 600.h,
              dashLength: 12,
              dashColor: AppColors.black),
          Text(
            "price: ${order.totalAmount}",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppButton(
              height: 70,
              width: 160,
              label: "Accept",
              onTap: () {},
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }
}

class MyOrderMealComponent extends StatelessWidget {
  final MealEntity meal;

  const MyOrderMealComponent({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              meal.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(width: 50),
            Text(
              "quantity: ${meal.details.quantity}",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        if (meal.details.customizeNote != null)
          SizedBox(
            width: 70.w,
            child: Text(
              "Customize Note: ${meal.details.customizeNote}",
              softWrap: true,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
      ],
    );
  }
}

class MyOrderDrinkComponent extends StatelessWidget {
  final DrinkEntity drinkEntity;

  const MyOrderDrinkComponent({super.key, required this.drinkEntity});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              drinkEntity.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(width: 50),
            Text(
              "quantity: ${drinkEntity.detailsEntity.quantity}",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ],
    );
  }
}
