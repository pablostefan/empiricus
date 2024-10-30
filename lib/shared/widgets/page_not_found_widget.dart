import 'package:empiricus/core/routes/route_name.dart';
import 'package:empiricus/core/routes/routes.dart';
import 'package:empiricus/l10n/translate.dart';
import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:empiricus/shared/theme/app_dimens.dart';
import 'package:empiricus/shared/theme/typography/typography.dart';
import 'package:flutter/material.dart';

class PageNotFoundWidget extends StatelessWidget {
  const PageNotFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primaryGray,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error, color: AppColors.error, size: AppDimens.xl),
          const SizedBox(height: AppDimens.pico),
          Text(Translate.strings.pageNotFound).bodyLargeRegular(),
          const SizedBox(height: AppDimens.xxxs),
          TextButton(
              onPressed: () {
                AppRoutes.router.goNamed(RouteName.login);
              },
              child: Text(Translate.strings.goToLogin).bodyMediumSemiBold().color(AppColors.error))
        ],
      ),
    );
  }
}
