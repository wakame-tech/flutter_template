import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/user/user.dart';
import 'package:flutter_template/infrastructure/user/i_user_repository.dart';

class UserService {
  const UserService({@required IUserRepository userRepository})
      : _userRepository = userRepository;

  final IUserRepository _userRepository;

  Future<User> fetchUser() async {
    return _userRepository.fetchUser();
  }

  Future saveUser(User user) async {
    await _userRepository.saveUser(user);
  }
}
