import 'package:empiricus/core/error/base_failure.dart';
import 'package:empiricus/core/utils/result_state.dart';
import 'package:empiricus/features/auth/domain/entities/login_entity.dart';
import 'package:empiricus/features/auth/domain/repository/login_repository.dart';
import 'package:empiricus/features/auth/domain/usecases/auth_usecase.dart';

class AuthUseCaseImp extends AuthUseCase {
  final LoginRepository _loginRepository;

  AuthUseCaseImp(this._loginRepository);

  @override
  Future<ResultState<BaseFailure, LoginEntity>> login({required String email, required String password}) async {
    return await _loginRepository.login(email: email, password: password);
  }
}
