import 'package:whatsapp_api/src/data/local_db.dart';
import 'package:whatsapp_api/src/domain/repository/local/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepositoryInterface {
  @override
  Future<bool> login(String username, String password) {
    return Future.delayed(Duration(seconds: 3), () {
      return users.where((u) => u["username"] == username && u["password"] == password).length >= 1;
    });
  }
  
}