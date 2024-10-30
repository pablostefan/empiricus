import 'package:empiricus/features/investments/presentation/controllers/investment_controller.dart';
import 'package:empiricus/features/investments/presentation/widgets/investment_list_widget.dart';
import 'package:empiricus/l10n/translate.dart';
import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:empiricus/shared/theme/app_opacity.dart';
import 'package:empiricus/shared/theme/typography/typography.dart';
import 'package:empiricus/shared/widgets/loading_modal_progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final InvestmentController _controller = GetIt.I.get<InvestmentController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.monoBlack.withOpacity(AppOpacity.oneEighth),
        title: Text(Translate.strings.investments).bodyLargeSemiBold().color(AppColors.monoWhite),
      ),
      body: ValueListenableBuilder(
        valueListenable: _controller.isLoading,
        builder: (_, value, child) => LoadingModalProgressWidget(isLoading: value, child: child!),
        child: ListenableBuilder(
          listenable: _controller,
          builder: (_, __) {
            return InvestmentListWidget(investments: _controller.investmentList.investments);
          },
        ),
      ),
    );
  }
}
