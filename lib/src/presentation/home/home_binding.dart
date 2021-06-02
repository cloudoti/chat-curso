import 'package:get/get.dart';
import 'package:whatsapp_api/src/domain/repository/local/contact_repository.dart';
import 'package:whatsapp_api/src/presentation/home/HomeController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
        contactRepositoryInterface: Get.find<ContactRepositoryInterface>()));
  }
}
