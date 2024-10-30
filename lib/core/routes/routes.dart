import 'package:empiricus/core/routes/route_name.dart';
import 'package:empiricus/features/auth/presentation/pages/login_page.dart';
import 'package:empiricus/features/investments/domain/entities/investment_entity.dart';
import 'package:empiricus/features/investments/presentation/pages/description_page.dart';
import 'package:empiricus/features/investments/presentation/pages/home_page.dart';
import 'package:empiricus/shared/widgets/page_not_found_widget.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static final router =
      GoRouter(errorBuilder: (context, state) => const PageNotFoundWidget(), initialLocation: '/', routes: [
    GoRoute(name: RouteName.login, path: RouteName.login, builder: (context, state) => const LoginPage()),
    GoRoute(name: RouteName.home, path: RouteName.home, builder: (context, state) => const HomePage(), routes: [
      GoRoute(
          name: RouteName.description,
          path: RouteName.description,
          builder: (context, state) => DescriptionPage(slug: state.pathParameters['slug'])),
    ]),
    GoRoute(
        name: RouteName.localDescription,
        path: RouteName.localDescription,
        builder: (context, state) => DescriptionPage(investment: state.extra as InvestmentEntity)),
  ]);
}
