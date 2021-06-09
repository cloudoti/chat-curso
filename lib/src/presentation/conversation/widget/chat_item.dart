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
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.80,
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Text(
              msg.message!,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),

        );
      case TypeMessage.RECEIVE:
        return Container(
          alignment: Alignment.centerLeft,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.80,
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Text(
              msg.message!,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
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
