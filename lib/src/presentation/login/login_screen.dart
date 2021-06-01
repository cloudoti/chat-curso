import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_api/src/presentation/login/login_controller.dart';
import 'package:whatsapp_api/src/presentation/routes/routes.dart';

class LoginScreen extends GetWidget<LoginController> {
  var controller = Get.find<LoginController>();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("LOGIN"),
            TextField(
              controller: controller.usernameTextField,
              decoration: const InputDecoration(
                hintText: 'Ingresa tu usuario',
                labelText: 'Usuario',
              ),
            ),
            TextField(
              controller: controller.passwordTextField,
              decoration: const InputDecoration(
                hintText: 'Ingresa tu password',
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() => Stack(
                  children: [
                    Container(
                      width: 500,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.all(5),
                              backgroundColor: Colors.black54),
                          onPressed: () {
                            controller.login().then((value) {
                              if (value) {
                                Get.toNamed(AppRoutes.home);
                              } else {
                                Get.snackbar("Error",
                                    "Los datos ingresados son incorrectos");
                              }
                            });
                          },
                          child: Text(
                            "Iniciar sesión",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    if (controller.loading.value)
                      Positioned(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                        right: 15,
                        width: 20,
                        height: 20,
                        top: 13,
                      )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
