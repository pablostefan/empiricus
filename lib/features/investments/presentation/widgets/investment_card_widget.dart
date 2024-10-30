import 'package:empiricus/core/routes/rout_name.dart';
import 'package:empiricus/core/routes/routes.dart';
import 'package:empiricus/features/investments/domain/entities/investment_entity.dart';
import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:empiricus/shared/theme/app_dimens.dart';
import 'package:empiricus/shared/theme/typography/typography.dart';
import 'package:flutter/material.dart';

class InvestmentCardWidget extends StatelessWidget {
  final InvestmentEntity investment;

  const InvestmentCardWidget({super.key, required this.investment});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppRoutes.router.pushNamed(RoutName.localDescription, extra: investment);
      },
      child: Container(
        height: 150,
        color: AppColors.monoWhite,
        child: Row(
          children: [
            Image.network(
              investment.imageSmall,
              height: 200,
              filterQuality: FilterQuality.high,
              fit: BoxFit.fitHeight,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(AppDimens.xxxs),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(investment.name).bodyMediumSemiBold(),
                    Text(investment.shortDescription).bodySmallRegular(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
