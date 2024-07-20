import '../models/user/user.dart';

abstract class AccounteRepository {
  Future<User?> getUserData();
}
