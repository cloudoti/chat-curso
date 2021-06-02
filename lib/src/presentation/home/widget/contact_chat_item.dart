import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_api/src/domain/entity/contact.dart';

class ContactChatItem extends StatelessWidget {
  final Contact contact;

  ContactChatItem({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
