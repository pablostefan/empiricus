import 'package:empiricus/features/investments/domain/entities/investment_entity.dart';
import 'package:empiricus/features/investments/presentation/controllers/investment_controller.dart';
import 'package:empiricus/features/investments/presentation/widgets/description_authors_widget.dart';
import 'package:empiricus/features/investments/presentation/widgets/description_features_widget.dart';
import 'package:empiricus/features/investments/presentation/widgets/description_widget.dart';
import 'package:empiricus/features/investments/presentation/widgets/image_error_widget.dart';
import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:empiricus/shared/theme/app_opacity.dart';
import 'package:empiricus/shared/theme/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class DescriptionPage extends StatefulWidget {
  final InvestmentEntity? investment;
  final String? slug;

  const DescriptionPage({super.key, this.slug, this.investment});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  final InvestmentController _controller = GetIt.I.get<InvestmentController>();

  InvestmentEntity _investment = InvestmentEntity.empty();

  @override
  void initState() {
    super.initState();
    _setInvestment();
  }

  void _setInvestment() async {
    var investment = widget.investment ?? await _controller.getInvestmentBySlug(widget.slug ?? '');
    setState(() => _investment = investment);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.monoWhite),
        backgroundColor: AppColors.monoBlack.withOpacity(AppOpacity.oneEighth),
        title: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(_investment.name).bodyLargeSemiBold().color(AppColors.monoWhite),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Image.network(_investment.imageLarge, errorBuilder: (_, __, ___) => const ImageErrorWidget())),
          SliverToBoxAdapter(child: DescriptionWidget(investment: _investment)),
          SliverToBoxAdapter(child: DescriptionAuthorsWidget(investment: _investment)),
          SliverSafeArea(
            top: false,
            right: false,
            left: false,
            sliver: SliverToBoxAdapter(
              child: DescriptionFeaturesWidget(investment: _investment),
            ),
          ),
        ],
      ),
    );
  }
}
