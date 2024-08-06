import 'package:big_bite_casher/modules/order/presentation/screens/main_screen.dart';
import 'package:big_bite_casher/modules/order/presentation/screens/show_news_details_screen.dart';
import 'package:go_router/go_router.dart';

class MainRoute {
  static const name = '/main';
  static GoRoute route = GoRoute(
    path: '/main',
    name: name,
    builder: (context, state) => MainScreen()
   
  );
}
