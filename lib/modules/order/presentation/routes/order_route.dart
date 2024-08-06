import 'package:big_bite_casher/core/services/cache_storage_services.dart';
import 'package:big_bite_casher/modules/auth/presentation/routes/login_route.dart';
import 'package:big_bite_casher/modules/order/presentation/screens/order_screen.dart';
import 'package:go_router/go_router.dart';

class OrderRoute {
  static const String name = '/main';
  static GoRoute route = GoRoute(
    path: name,
    redirect: (context, state) {
      if (!CacheStorageServices().hasToken) return LoginRoute.name;
      return null;
    },
    builder: (context, state) => const OrderScreen(),
  );
}
