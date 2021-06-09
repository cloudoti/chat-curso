import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_api/src/domain/entity/contact.dart';

class ContactChatItem extends StatelessWidget {
  final Contact contact;

  ContactChatItem({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: new CircleAvatar(
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(this.contact.avatarUrl!),
      ),
      title: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Text(
            this.contact.name!,
            style: new TextStyle(fontWeight: FontWeight.bold),
          ),
          new Text(
            this.contact.lastMessageTime!,
            style: new TextStyle(color: Colors.grey, fontSize: 14.0),
          ),
        ],
      ),
      subtitle: new Container(
          padding: const EdgeInsets.only(top: 5.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  if (this.contact.lastEvent == 1)
                    Icon(Icons.check,color: Colors.blue,),
                  if (this.contact.lastEvent == 2)
                    Icon(Icons.mic, color: Colors.green,),
                  if (this.contact.lastEvent == 3)
                    Icon(Icons.camera_alt, color: Colors.grey,),
                  Text(this.contact.lastMessage!)
                ],
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.grey,),
            ],
          )),
    );

    /*
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Image.asset("assets/img/avatar.png"),
          height: 60,
          width: 60,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(this.contact.name!),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  if (this.contact.lastEvent == 1)
                    Icon(Icons.check),
                  if (this.contact.lastEvent == 2)
                    Icon(Icons.mic),
                  if (this.contact.lastEvent == 3)
                    Icon(Icons.camera_alt),
                  Text(this.contact.lastMessage!)
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(this.contact.lastMessageTime!),
        ),
      ],
    );*/
  }
}
