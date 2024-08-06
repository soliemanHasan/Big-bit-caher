import 'package:big_bite_casher/modules/auth/presentation/screens/login_screen.dart';
import 'package:go_router/go_router.dart';

class LoginRoute {
  static const String name = '/login';

  static GoRoute route = GoRoute(
    path: name,
    name: name,
    // redirect: (context, state) {
    //   storage handler has token
    //   return
    // },
    builder: (context, state) => LoginScreen(),
  );
}
