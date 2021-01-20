import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/user/user.dart';
import 'package:flutter_template/infrastructure/user/i_user_repository.dart';

class UserRepository implements IUserRepository {
  const UserRepository({@required this.store});

  final FirebaseFirestore store;

  @override
  Future<User> fetchUser() async {
    return User(name: "test");
  }

  @override
  Future saveUser(User user) async {
    // noop
  }
}