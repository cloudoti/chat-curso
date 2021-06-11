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
            icon: const Icon(
              Icons.video_call,
              color: Colors.blue,
            ),
            tooltip: 'Video llamada',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Es una video llamada')));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.call,
              color: Colors.blue,
            ),
            tooltip: 'Llamada',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Es una llamada')));
            },
          ),
        ],
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 12,
                  child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                      ),

                      child: Obx(() =>  ListView.builder(
                          itemCount: controller.dataMessages.value.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                //Get.toNamed(AppRoutes.chat, arguments: controller.listContact.value[index]);
                              },
                              child: ChatItem(
                                  message:
                                      controller.dataMessages.value[index]),
                            );
                          })),
                  )),
              Container(
                padding: EdgeInsets.only(bottom: 5.0),
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 30.0,
                                  color: Colors.blue,
                                ),
                              ))),
                      Expanded(
                        flex: 10,
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            /* border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(30.0)*/
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: TextField(
                              //controller: _messageController,
                              cursorColor: Theme.of(context).primaryColor,
                              decoration: InputDecoration(
                                hintText: "Type a message",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(right: 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Icon(
                                        Icons.sticky_note_2_outlined,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                              child: Center(
                            child: Icon(
                              Icons.camera_alt_outlined,
                              size: 30.0,
                              color: Colors.blue,
                            ),
                          ))),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                              child: Center(
                            child: Icon(
                              Icons.mic_none_outlined,
                              size: 30.0,
                              color: Colors.blue,
                            ),
                          )))
                    ],
                  ),
                ),
              ),
            ],
          )),

      /*  body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 20,
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
      ),
      bottomNavigationBar
          : BottomNavigationBar(
          currentIndex : 0,
          fixedColor
              : Colors.green,
          items
              : [
            BottomNavigationBarItem(
              title
                  : Text("Home"),
              icon
                  : Icon(Icons.home), ),
            BottomNavigationBarItem(
              title
                  : Text("Search"),
              icon
                  : Icon(Icons.search), ),
            BottomNavigationBarItem(
              title
                  : Text("Profile"),
              icon
                  : Icon(Icons.account_circle), ),
          ],
          onTap
              : (int indexOfItem){

          }),
*/
    );
  }
}
