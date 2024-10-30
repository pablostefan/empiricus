abstract class MockLoginData {
  static const String _email = "empiricus@gmai.com";
  static const String _password = "empiricus";

  static bool _validateEmail(String email) => email == _email;

  static bool _validatePassword(String password) => password == _password;

  static Map<String, dynamic> login({required String email, required String password}) {
    bool validEmail = MockLoginData._validateEmail(email);
    bool validPassword = MockLoginData._validatePassword(password);
    String message;

    if (validEmail && validPassword) {
      message = "Login realizado com sucesso";
    } else if (!validEmail && !validPassword) {
      message = "Email e senha inválidos";
    } else if (!validEmail) {
      message = "Email inválido";
    } else {
      message = "Senha inválida";
    }

    return {
      "success": validEmail && validPassword,
      "message": message,
    };
  }
}
