import 'package:empiricus/core/error/base_failure.dart';
import 'package:empiricus/core/utils/result_state.dart';
import 'package:empiricus/features/auth/domain/entities/login_entity.dart';

abstract class AuthUseCase {
  Future<ResultState<BaseFailure, LoginEntity>> login({required String email, required String password});
}
