import 'package:whatsapp_api/src/domain/entity/contact.dart';
import 'package:whatsapp_api/src/domain/entity/type_message.dart';

class Message {
  Contact? contact;
  TypeMessage? type;
  String? message;
  String? date;
  double? size;
  String? fileName;
  bool? isReceive;

  Message(
      {this.contact,
      this.type,
      this.message,
      this.date,
      this.size,
      this.fileName,
      this.isReceive});
}
