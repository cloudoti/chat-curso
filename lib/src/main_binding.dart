import 'package:get/get.dart';
import 'package:whatsapp_api/src/data/local/auth_repository_impl.dart';
import 'package:whatsapp_api/src/domain/repository/local/auth_repository.dart';
import 'package:whatsapp_api/src/presentation/login/login_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
      final authRepository = new AuthRepositoryImpl();
      Get.lazyPut<AuthRepositoryInterface>(() => authRepository);

      Get.lazyPut(() => LoginController(authRepositoryInterface: authRepository));
  }
}