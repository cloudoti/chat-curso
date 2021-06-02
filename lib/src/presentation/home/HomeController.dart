import 'package:get/get.dart';
import 'package:whatsapp_api/src/domain/entity/contact.dart';
import 'package:whatsapp_api/src/domain/repository/local/contact_repository.dart';

class HomeController extends GetxController {
  final ContactRepositoryInterface contactRepositoryInterface;

  HomeController({required this.contactRepositoryInterface});

  @override
  void onReady() {
    this.loadContacts(true);
    super.onReady();
  }

  var gettingContacts = false.obs;
  var listContact = <Contact>[].obs;

  Future<void> loadContacts(bool isActive) async {
    gettingContacts(true);
    final data = await this.contactRepositoryInterface.getAll(isActive);

    listContact(data);
    gettingContacts(false);
  }
}