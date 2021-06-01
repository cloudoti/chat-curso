import 'package:get/get.dart';
import 'package:whatsapp_api/src/presentation/home/home_screen.dart';
import 'package:whatsapp_api/src/presentation/login/login_screen.dart';

class AppRoutes {
  static final String login = "/login";
  static final String home = "/home";
}

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.login, page: () => LoginScreen()),
    GetPage(name: AppRoutes.home, page: () => HomeScreen()),
  ];
}