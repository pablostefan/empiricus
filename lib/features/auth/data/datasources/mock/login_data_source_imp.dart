import 'package:empiricus/features/auth/data/datasources/mock/login_data_source.dart';
import 'package:empiricus/features/auth/data/datasources/mock/mock_data.dart';

class LoginDataSourceImp extends LoginDataSource {
  @override
  Future<Map<String, dynamic>> login({required String email, required String password}) async {
    return MockLoginData.login(email: email, password: password);
  }
}
