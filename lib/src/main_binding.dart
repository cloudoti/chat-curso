import 'package:get/get.dart';
import 'package:whatsapp_api/src/data/local/auth_repository_impl.dart';
import 'package:whatsapp_api/src/data/local/contact_repository_impl.dart';
import 'package:whatsapp_api/src/data/local/message_repository_impl.dart';
import 'package:whatsapp_api/src/domain/repository/local/auth_repository.dart';
import 'package:whatsapp_api/src/domain/repository/local/contact_repository.dart';
import 'package:whatsapp_api/src/domain/repository/local/message_repository.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepositoryInterface>(() => new AuthRepositoryImpl());
    Get.lazyPut<ContactRepositoryInterface>(() => new ContactRepositoryImpl());
    Get.lazyPut<MessageRepositoryInterface>(() => new MessageRepositoryImpl());
  }
}
