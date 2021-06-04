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
        title: contact != null
            ? ContactInfo(
                contact: contact!,
              )
            : null,
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
