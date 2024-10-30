import 'package:empiricus/core/routes/rout_name.dart';
import 'package:empiricus/features/auth/presentation/pages/login_page.dart';
import 'package:empiricus/features/investments/domain/entities/investment_entity.dart';
import 'package:empiricus/features/investments/presentation/pages/description_page.dart';
import 'package:empiricus/features/investments/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static final router = GoRouter(initialLocation: '/', routes: [
    GoRoute(name: RoutName.login, path: RoutName.login, builder: (context, state) => const LoginPage()),
    GoRoute(name: RoutName.home, path: RoutName.home, builder: (context, state) => const HomePage()),
    GoRoute(
        name: RoutName.description,
        path: RoutName.description,
        builder: (context, state) => DescriptionPage(investment: state.extra as InvestmentEntity))
  ]);
}
