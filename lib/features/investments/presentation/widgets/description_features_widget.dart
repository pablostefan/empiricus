import 'package:empiricus/features/investments/domain/entities/investment_entity.dart';
import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:empiricus/shared/theme/app_dimens.dart';
import 'package:empiricus/shared/theme/app_opacity.dart';
import 'package:empiricus/shared/theme/typography/typography.dart';
import 'package:flutter/material.dart';

class DescriptionFeaturesWidget extends StatelessWidget {
  final InvestmentEntity investment;

  const DescriptionFeaturesWidget({super.key, required this.investment});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.monoWhite,
      padding: const EdgeInsets.all(AppDimens.xxxs),
      margin: const EdgeInsets.only(top: AppDimens.micro),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Features").bodyMediumSemiBold(),
          const SizedBox(height: AppDimens.micro),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (_, __) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: AppDimens.pico),
                child: Divider(
                  color: AppColors.monoBlack.withOpacity(AppOpacity.dotOne),
                ),
              );
            },
            itemCount: investment.features.length,
            itemBuilder: (_, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(investment.features.elementAt(index).title).bodySmallSemiBold(),
                  const SizedBox(height: AppDimens.femto),
                  Text(investment.features.elementAt(index).description).bodySmallRegular(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
