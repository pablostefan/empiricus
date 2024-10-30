import 'package:empiricus/core/base_repository.dart';
import 'package:empiricus/core/error/base_failure.dart';
import 'package:empiricus/core/utils/result_state.dart';
import 'package:empiricus/features/auth/data/datasources/mock/login_data_source.dart';
import 'package:empiricus/features/auth/domain/entities/login_entity.dart';
import 'package:empiricus/features/auth/domain/repository/login_repository.dart';

class LoginRepositoryImp extends LoginRepository implements BaseRepository {
  final LoginDataSource _loginDataSource;

  LoginRepositoryImp(this._loginDataSource);

  @override
  Future<ResultState<BaseFailure, LoginEntity>> login({required String email, required String password}) {
    return tryExecute<LoginEntity>(() async {
      final response = await _loginDataSource.login(email: email, password: password);
      return LoginEntity.fromJson(response);
    });
  }
}
