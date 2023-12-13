// lib/src/features/authentication/data/repositories/user_repository.dart

import 'package:riverpod_boilerplates/src/core/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getUserData(String userId);
  // Other user related methods
}
