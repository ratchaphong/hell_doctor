import 'package:get/get.dart';

import 'views/home_screen/home_screen.dart';
import 'views/login_screen.dart';
import 'views/register_screen.dart';
import 'views/splash_screen.dart';

class Routes {
  static final routes = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: '/login', page: () => const LoginScreen()),
    GetPage(name: '/register', page: () => const RegisterScreen()),
    GetPage(name: '/home', page: () => const HomeScreen()),
  ];
}
