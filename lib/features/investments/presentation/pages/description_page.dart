import 'package:empiricus/features/investments/domain/entities/investment_entity.dart';
import 'package:empiricus/features/investments/presentation/widgets/description_authors_widget.dart';
import 'package:empiricus/features/investments/presentation/widgets/description_features_widget.dart';
import 'package:empiricus/features/investments/presentation/widgets/description_widget.dart';
import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:empiricus/shared/theme/app_opacity.dart';
import 'package:empiricus/shared/theme/typography/typography.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  final InvestmentEntity investment;

  const DescriptionPage({super.key, required this.investment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.monoWhite),
        backgroundColor: AppColors.monoBlack.withOpacity(AppOpacity.oneEighth),
        title: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(investment.name).bodyLargeSemiBold().color(AppColors.monoWhite),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Image.network(investment.imageLarge, fit: BoxFit.fitWidth)),
          SliverToBoxAdapter(child: DescriptionWidget(investment: investment)),
          SliverToBoxAdapter(child: DescriptionAuthorsWidget(investment: investment)),
          SliverSafeArea(
            top: false,
            right: false,
            left: false,
            sliver: SliverToBoxAdapter(
              child: DescriptionFeaturesWidget(investment: investment),
            ),
          ),
        ],
      ),
    );
  }
}
