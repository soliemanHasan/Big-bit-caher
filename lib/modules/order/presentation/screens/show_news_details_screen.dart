// import 'package:big_bite_casher/core/constants/app_colors.dart';
// import 'package:big_bite_casher/core/core_component/failure_component.dart';
// import 'package:big_bite_casher/core/core_component/loading_component.dart';
// import 'package:big_bite_casher/core/errors/failure.dart';
// import 'package:big_bite_casher/core/services/service_locator.dart';
// import 'package:big_bite_casher/core/utils/base_state.dart';
// import 'package:big_bite_casher/modules/order/domain/entities/order_entity.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';

// class ShowNewsDetailsScreen extends StatelessWidget {
//   final String id;
//   const ShowNewsDetailsScreen({
//     super.key,
//     required this.id,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocProvider(
//         create: (context) =>
//             sl<ShowNewsBloc>()..add(ShowNewsEvent(int.parse(id))),
//         child: BlocBuilder<ShowNewsBloc, BaseState<OrderEntity>>(
//             builder: (context, state) {
//           if (state.isError) {
//             return FailureComponent(failure: Failure(state.errorMessage));
//           } else if (state.isSuccess) {
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Stack(
//                   children: [
//                     SizedBox(
//                       height: 300.h,
//                       width: double.infinity,
//                       child: Image.network(
//                         state.data!.photoUrl,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Positioned(
//                       top: 40,
//                       left: 10,
//                       child: IconButton(
//                           onPressed: () => context.pop(),
//                           icon: const Icon(
//                             Icons.close,
//                             color: AppColors.closeColor,
//                             size: 50,
//                           )),
//                     )
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: SizedBox(
//                     child: Text(
//                       state.data!.description,
//                       softWrap: true,
//                       maxLines: 8,
//                       style: Theme.of(context).textTheme.labelMedium,
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           } else if (state.isLoading) {
//             return const LoadingComponent();
//           }
//           return const SizedBox();
//         }),
//       ),
//     );
//   }
// }
