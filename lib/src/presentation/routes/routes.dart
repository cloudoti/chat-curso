import 'package:get/get.dart';
import 'package:whatsapp_api/src/main_binding.dart';
import 'package:whatsapp_api/src/presentation/conversation/conversation_binding.dart';
import 'package:whatsapp_api/src/presentation/conversation/conversation_screen.dart';
import 'package:whatsapp_api/src/presentation/home/home_binding.dart';
import 'package:whatsapp_api/src/presentation/home/home_screen.dart';
import 'package:whatsapp_api/src/presentation/login/login_binding.dart';
import 'package:whatsapp_api/src/presentation/login/login_screen.dart';

class AppRoutes {
  static final String login = "/login";
  static final String home = "/home";
  static final String chat = "/chat";
}

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.login,
        page: () => LoginScreen(),
        bindings: [MainBinding(), LoginBinding()]),
    GetPage(
        name: AppRoutes.home,
        page: () => HomeScreen(),
        bindings: [MainBinding(), HomeBinding()]),
    GetPage(
        name: AppRoutes.chat,
        page: () => ConversationScreen(),
        bindings: [MainBinding(), ConversationBinding()]),
  ];
}
