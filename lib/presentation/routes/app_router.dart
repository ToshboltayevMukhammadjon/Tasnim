import 'package:auto_route/annotations.dart';
import 'package:tasnim/presentation/screens/login/login_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Screen,Route",
  routes: [
    AutoRoute(
      page: LoginScreen,
      initial: true,
    ),
  ],
)
class $AppRouter {}
