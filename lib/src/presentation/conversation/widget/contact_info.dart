import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_api/src/domain/entity/contact.dart';

class ContactInfo extends StatelessWidget {
  final Contact contact;

  ContactInfo({Key? key, required this.contact}) : super(key: key);

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
        ],
      ),
      subtitle: new Container(
          padding: const EdgeInsets.only(top: 5.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Text("Tap here for contact info",)
                ],
              ),
            ],
          )),
    );
    /*return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Image.asset("assets/img/avatar.png"),
          height: 45,
          width: 45,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.contact.name!,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Tap here for contact info",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ],
    );*/
  }
}
