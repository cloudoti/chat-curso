import 'package:whatsapp_api/src/domain/entity/contact.dart';
import 'package:whatsapp_api/src/domain/entity/message.dart';

abstract class MessageRepositoryInterface {
  Future<List<Message>> getAll(Contact contact);
}
