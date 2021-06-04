import 'package:get/get.dart';
import 'package:whatsapp_api/src/domain/entity/contact.dart';
import 'package:whatsapp_api/src/domain/entity/message.dart';
import 'package:whatsapp_api/src/domain/repository/local/message_repository.dart';

class ConversationController extends GetxController {
  final MessageRepositoryInterface messageRepositoryInterface;

  ConversationController({required this.messageRepositoryInterface});

  var gettingMessages = false.obs;
  var dataMessages = <Message>[].obs;

  @override
  void onReady() {

    super.onReady();
  }

  void loadMessages(Contact contact) async {
    gettingMessages(true);

    final msgs = await this.messageRepositoryInterface.getAll(contact);

    dataMessages(msgs);

    gettingMessages(false);
  }

}