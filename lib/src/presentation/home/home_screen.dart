import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_api/src/presentation/home/HomeController.dart';
import 'package:whatsapp_api/src/presentation/home/widget/contact_chat_item.dart';
import 'package:whatsapp_api/src/presentation/routes/routes.dart';

class HomeScreen extends GetWidget<HomeController> {
  var controller = Get.find<HomeController>();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Obx(() => Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Done",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Chats",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  ListView.builder(
                      itemCount: controller.listContact.value.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {

                            Get.toNamed(AppRoutes.chat, arguments: controller.listContact.value[index]);
                          },
                          child: ContactChatItem(contact: controller.listContact.value[index]),
                        );
                      })
                ],
              ),
            ),
          ],
        )),
      ),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(color: Colors.grey),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Activos"),
              Text("Cerrados"),
            ],
          ),
        ),
      ),
    );
  }
}
