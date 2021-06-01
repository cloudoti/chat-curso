abstract class AuthRepositoryInterface {
  Future<bool> login(String username, String password);
}