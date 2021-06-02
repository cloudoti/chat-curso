import 'package:whatsapp_api/src/domain/entity/contact.dart';

abstract class ContactRepositoryInterface {
  Future<List<Contact>> getAll(bool isActive);
}