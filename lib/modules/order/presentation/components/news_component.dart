// import 'package:big_bite_casher/core/constants/apis_urls.dart';
// import 'package:big_bite_casher/modules/order/domain/entities/order_entity.dart';
// import 'package:big_bite_casher/modules/order/presentation/routes/show_news_details_route.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class NewsComponent extends StatelessWidget {
//   final OrderEntity newsEntity;
//   const NewsComponent({super.key, required this.newsEntity});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () =>
//           context.pushNamed(ShowNewsDetailsRoute.name, pathParameters: {
//         "id": newsEntity.id.toString(),
//       }),
//       child: Column(
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(9.0),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 clipBehavior: Clip.antiAlias,
//                 child: Image.network(
//                   ApisUrls().baseImagesUrl(newsEntity.photoUrl),
//                   fit: BoxFit.fitWidth,
//                 ),
//               ),
//             ),
//           ),
//           Text(
//             newsEntity.name,
//             style: Theme.of(context).textTheme.headlineSmall,
//           ),
//         ],
//       ),
//     );
//   }
// }
