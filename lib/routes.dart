import 'package:get/get.dart';

import 'views/home_screen.dart';
import 'views/login_screen.dart';
import 'views/register_screen.dart';
import 'views/splash_screen.dart';

class Routes {
  static final routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/register', page: () => RegisterScreen()),
    GetPage(name: '/home', page: () => const HomeScreen()),
  ];
}
