import 'package:get/get.dart';
import 'package:whatsapp_api/src/domain/repository/local/auth_repository.dart';
import 'package:whatsapp_api/src/domain/repository/local/contact_repository.dart';
import 'package:whatsapp_api/src/presentation/home/HomeController.dart';
import 'package:whatsapp_api/src/presentation/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(authRepositoryInterface: Get.find<AuthRepositoryInterface>()));
  }
}
