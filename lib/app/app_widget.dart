import 'package:empiricus/core/injection/injection.dart';
import 'package:empiricus/core/routes/rout_name.dart';
import 'package:empiricus/core/routes/routes.dart';
import 'package:empiricus/shared/widgets/snackbar_global.dart';
import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
    Injection.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Empiricus',
        scaffoldMessengerKey: SnackbarGlobal.key,
        routes: AppRoutes.routes,
        initialRoute: RoutName.login,
        navigatorKey: AppRoutes.navigatorKey,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.primaryGray, useMaterial3: true));
  }
}
