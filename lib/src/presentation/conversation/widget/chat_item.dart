import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_api/src/domain/entity/message.dart';
import 'package:whatsapp_api/src/domain/entity/type_message.dart';

class ChatItem extends StatefulWidget {
  final Message message;

  const ChatItem({Key? key, required this.message}) : super(key: key);

  @override
  _ChatItemState createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  Widget getBuild() {
    final msg = this.widget.message;
    switch (msg.type!) {
      case TypeMessage.SEND:
        return Container(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(7),
            child: Text(msg.message!),
            color: Colors.green,
          ),
        );
      case TypeMessage.RECEIVE:
        return Container(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.all(7),
            child: Text(msg.message!),
            color: Colors.grey,
          ),
        );
      case TypeMessage.DATE:
        // TODO: Handle this case.
        break;
      case TypeMessage.FILE_RECEIVE:
        // TODO: Handle this case.
        break;
      case TypeMessage.FILE_SEND:
        // TODO: Handle this case.
        break;
    }

    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return getBuild();
  }
}
