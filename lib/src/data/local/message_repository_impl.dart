import 'package:whatsapp_api/src/data/local_db.dart';
import 'package:whatsapp_api/src/domain/entity/contact.dart';
import 'package:whatsapp_api/src/domain/entity/message.dart';
import 'package:whatsapp_api/src/domain/repository/local/message_repository.dart';

class MessageRepositoryImpl implements MessageRepositoryInterface {
    @override
  Future<List<Message>> getAll(Contact contact) {
    return Future.delayed(Duration(seconds: 2), () {
      return messages.where((m) => m.contact!.name == contact.name).toList();
    });
  }
}
