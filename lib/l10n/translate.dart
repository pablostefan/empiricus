import 'strings/pt_br.dart';

abstract class Translate {
  static AppStrings strings = _getType();

  static T _getType<T extends AppStrings>() => AppPtBR() as T;
}

abstract class AppStrings {
  String get login;

  String get hello;

  String get accessAccount;

  String get email;

  String get password;

  String get investments;

  String get authors;

  String get features;

  String get notFound;
}
