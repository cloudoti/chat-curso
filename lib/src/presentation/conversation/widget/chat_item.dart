import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_api/src/domain/entity/message.dart';
import 'package:whatsapp_api/src/domain/entity/type_message.dart';
import 'package:bubble/bubble.dart';

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
          child: Bubble(
            margin: BubbleEdges.only(top: 20.0, left: 100.0, bottom: 0.0),
            nip: BubbleNip.rightBottom,
            color: Color.fromRGBO(225, 255, 199, 1.0),
            nipHeight: 12.0,
            alignment: Alignment.centerRight,
            elevation: 0.4,
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text(
                  msg.message!,
                  style: new TextStyle(fontSize: 16.0, color: Colors.black),
                ),
                new SizedBox(
                  height: 10.0,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Text(
                      msg.date!,
                      style: new TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Icon(
                      Icons.check,
                      color: Colors.blue,
                      size: 16.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      case TypeMessage.RECEIVE:
        return Container(
          alignment: Alignment.centerLeft,
          child: Bubble(
            margin: BubbleEdges.only(top: 20.0, right: 100.0, bottom: 0.0),
            nip: BubbleNip.leftBottom,
            color: Color.fromRGBO(250, 250, 250, 1.0),
            nipHeight: 12.0,
            alignment: Alignment.centerLeft,
            elevation: 0.4,
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text(
                  msg.message!,
                  style: new TextStyle(fontSize: 16.0, color: Colors.black),
                ),
                new SizedBox(
                  height: 10.0,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Text(
                      msg.date!,
                      style: new TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                  ],
                ),
              ],
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
