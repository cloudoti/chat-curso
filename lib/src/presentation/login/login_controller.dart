import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:whatsapp_api/src/domain/repository/local/auth_repository.dart';

class LoginController extends GetxController {
  final AuthRepositoryInterface authRepositoryInterface;

  LoginController({required this.authRepositoryInterface});

  var usernameTextField = new TextEditingController();
  var passwordTextField = new TextEditingController();

  var loading = false.obs;

  Future<bool> login() async {
    loading(true);
    var response = await this.authRepositoryInterface.login(usernameTextField.text, passwordTextField.text);
    loading(false);

    return response;
  }
}
