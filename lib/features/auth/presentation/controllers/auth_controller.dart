import 'package:empiricus/core/error/base_failure.dart';
import 'package:empiricus/core/routes/rout_name.dart';
import 'package:empiricus/core/routes/routes.dart';
import 'package:empiricus/shared/widgets/snackbar_global.dart';
import 'package:empiricus/features/auth/domain/entities/login_entity.dart';
import 'package:empiricus/features/auth/domain/usecases/auth_usecase.dart';
import 'package:flutter/material.dart';

class AuthController {
  final AuthUseCase _authUseCase;

  AuthController(this._authUseCase);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  ValueNotifier<bool> obscurePassword = ValueNotifier<bool>(true);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void login(BuildContext context) async {
    final email = emailController.text;
    final password = passwordController.text;
    var response = await _authUseCase.login(email: email, password: password);
    response.map(_ifResult, _ifError);
  }

  void _ifResult(LoginEntity result) {
    if (result.success) {
      AppRoutes.router.goNamed(RoutName.home);
    } else {
      SnackbarGlobal.show(result.message);
    }
  }

  void _ifError(BaseFailure error) {
    print('Error: ${error.message}');
  }

  void changeObscurePassword() => obscurePassword.value = !obscurePassword.value;
}
