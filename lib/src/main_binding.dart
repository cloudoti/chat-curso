import 'package:get/get.dart';
import 'package:whatsapp_api/src/data/local/auth_repository_impl.dart';
import 'package:whatsapp_api/src/data/local/contact_repository_impl.dart';
import 'package:whatsapp_api/src/domain/repository/local/auth_repository.dart';
import 'package:whatsapp_api/src/domain/repository/local/contact_repository.dart';
import 'package:whatsapp_api/src/presentation/home/HomeController.dart';
import 'package:whatsapp_api/src/presentation/login/login_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    final authRepository = new AuthRepositoryImpl();
    Get.lazyPut<AuthRepositoryInterface>(() => authRepository);
    final contactRepository = new ContactRepositoryImpl();
    Get.lazyPut<ContactRepositoryInterface>(() => contactRepository);

    Get.lazyPut(() => LoginController(authRepositoryInterface: authRepository));
    Get.lazyPut(
        () => HomeController(contactRepositoryInterface: contactRepository));
  }
}
