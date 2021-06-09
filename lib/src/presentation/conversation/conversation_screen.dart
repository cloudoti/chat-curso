import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_api/src/domain/entity/contact.dart';
import 'package:whatsapp_api/src/presentation/conversation/conversation_controller.dart';
import 'package:whatsapp_api/src/presentation/conversation/widget/chat_item.dart';
import 'package:whatsapp_api/src/presentation/conversation/widget/contact_info.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  var controller = Get.find<ConversationController>();
  Contact? contact;

  @override
  void initState() {
    contact = Get.arguments as Contact;
    controller.loadMessages(contact!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.blue,
            onPressed: () {
              Navigator.pop(context);
            }),
        title: contact != null
            ? ContactInfo(
                contact: contact!,
              )
            : null,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.video_call,color: Colors.blue,),
            tooltip: 'Video llamada',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Es una video llamada')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.call,color: Colors.blue,),
            tooltip: 'Llamada',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Es una llamada')));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Obx(() => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                      itemCount: controller.dataMessages.value.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {

                            //Get.toNamed(AppRoutes.chat, arguments: controller.listContact.value[index]);
                          },
                          child: ChatItem(message: controller.dataMessages.value[index]),
                        );
                      })
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
