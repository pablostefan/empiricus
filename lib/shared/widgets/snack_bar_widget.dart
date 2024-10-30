import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:empiricus/shared/theme/app_dimens.dart';
import 'package:empiricus/shared/theme/typography/typography.dart';
import 'package:flutter/material.dart';

enum SnackBarType {
  error(color: AppColors.error),
  success(color: AppColors.success, icon: Icons.check_circle),
  alert(color: AppColors.alert, icon: Icons.warning);

  final Color color;
  final IconData icon;

  const SnackBarType({required this.color, this.icon = Icons.error});
}

class SnackBarWidget extends SnackBar {
  final String message;
  final SnackBarType type;

  SnackBarWidget({super.key, required this.message, this.type = SnackBarType.error})
      : super(
          backgroundColor: type.color,
          dismissDirection: DismissDirection.up,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 2),
          showCloseIcon: true,
          margin: const EdgeInsets.only(right: AppDimens.xxxs, left: AppDimens.xxxs, bottom: AppDimens.xxxs),
          content: Row(
            children: [
              Icon(type.icon, color: AppColors.monoWhite),
              const SizedBox(width: AppDimens.xxxs),
              Text(message).bodyBaseRegular().color(AppColors.monoWhite),
            ],
          ),
        );
}
