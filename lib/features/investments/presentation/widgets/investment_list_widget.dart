import 'package:empiricus/features/investments/domain/entities/investment_entity.dart';
import 'package:empiricus/features/investments/presentation/widgets/investment_card_widget.dart';
import 'package:empiricus/shared/theme/app_dimens.dart';
import 'package:flutter/material.dart';

class InvestmentListWidget extends StatelessWidget {
  final List<InvestmentEntity> investments;

  const InvestmentListWidget({super.key, required this.investments});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(AppDimens.xxs),
      separatorBuilder: (_, __) => const SizedBox(height: AppDimens.xxs),
      itemCount: investments.length,
      itemBuilder: (_, index) {
        return InvestmentCardWidget(investment: investments.elementAt(index));
      },
    );
  }
}
