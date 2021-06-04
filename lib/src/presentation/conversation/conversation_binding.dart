import 'package:get/get.dart';
import 'package:whatsapp_api/src/domain/repository/local/contact_repository.dart';
import 'package:whatsapp_api/src/domain/repository/local/message_repository.dart';
import 'package:whatsapp_api/src/presentation/conversation/conversation_controller.dart';

class ConversationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConversationController(
        messageRepositoryInterface: Get.find<MessageRepositoryInterface>()));
  }
}
