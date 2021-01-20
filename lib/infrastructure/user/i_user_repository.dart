import 'package:flutter_template/domain/user/user.dart';

abstract class IUserRepository {
  Future<User> fetchUser();

  Future saveUser(User user);
}