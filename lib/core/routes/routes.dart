import 'package:empiricus/core/routes/rout_name.dart';
import 'package:empiricus/features/auth/presentation/pages/login_page.dart';
import 'package:empiricus/features/investments/domain/entities/investment_entity.dart';
import 'package:empiricus/features/investments/presentation/pages/description_page.dart';
import 'package:empiricus/features/investments/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static _getArguments<T>(BuildContext context) => ModalRoute.of(context)!.settings.arguments as T;

  static Map<String, WidgetBuilder> get routes => {
        RoutName.login: (context) => const LoginPage(),
        RoutName.home: (context) => const HomePage(),
        RoutName.description: (context) => DescriptionPage(investment: _getArguments<InvestmentEntity>(context))
      };

  static pushReplacementNamed(String routeName, {Object? arguments}) {
    navigatorKey.currentState!.pushReplacementNamed(routeName, arguments: arguments);
  }
}
