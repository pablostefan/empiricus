import 'package:empiricus/features/investments/domain/entities/investment_entity.dart';
import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:empiricus/shared/theme/app_dimens.dart';
import 'package:empiricus/shared/theme/typography/typography.dart';
import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  final InvestmentEntity investment;

  const DescriptionWidget({super.key, required this.investment});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.monoWhite,
      padding: const EdgeInsets.all(AppDimens.xxxs),
      margin: const EdgeInsets.only(top: AppDimens.micro),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(investment.name).bodyMediumSemiBold(),
          const SizedBox(height: AppDimens.micro),
          Text(investment.description).bodySmallRegular(),
        ],
      ),
    );
  }
}
