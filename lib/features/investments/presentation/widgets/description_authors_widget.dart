import 'package:empiricus/features/investments/domain/entities/investment_entity.dart';
import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:empiricus/shared/theme/app_dimens.dart';
import 'package:empiricus/shared/theme/typography/typography.dart';
import 'package:flutter/material.dart';

class DescriptionAuthorsWidget extends StatelessWidget {
  final InvestmentEntity investment;

  const DescriptionAuthorsWidget({super.key, required this.investment});

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
          const Text("Autores").bodyMediumSemiBold(),
          const SizedBox(height: AppDimens.micro),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (_, __) => const SizedBox(height: AppDimens.nano),
            itemCount: investment.authors.length,
            itemBuilder: (_, index) {
              return Text(investment.authors.elementAt(index).name).bodySmallRegular();
            },
          ),
        ],
      ),
    );
  }
}
