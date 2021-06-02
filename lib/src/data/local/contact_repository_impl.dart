import 'package:whatsapp_api/src/data/local_db.dart';
import 'package:whatsapp_api/src/domain/entity/contact.dart';
import 'package:whatsapp_api/src/domain/repository/local/contact_repository.dart';

class ContactRepositoryImpl implements ContactRepositoryInterface {
  @override
  Future<bool> login(String username, String password) {
    return Future.delayed(Duration(seconds: 3), () {
      return users.where((u) => u["username"] == username && u["password"] == password).length >= 1;
    });
  }

  @override
  Future<List<Contact>> getAll(bool isActive) {
    return Future.delayed(Duration(seconds: 3), () {
      return contacts.where((c) => c.isActive == isActive).toList();
    });
  }
}