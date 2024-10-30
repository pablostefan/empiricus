import 'package:empiricus/core/error/base_failure.dart';
import 'package:empiricus/features/investments/domain/entities/investment_list_entity.dart';
import 'package:empiricus/features/investments/domain/usecases/investment_usecase.dart';
import 'package:empiricus/shared/widgets/snackbar_global.dart';
import 'package:flutter/foundation.dart';

class InvestmentController with ChangeNotifier {
  final InvestmentUseCase _investmentUseCase;

  InvestmentController(this._investmentUseCase) {
    _getInvestments();
  }

  ValueNotifier<bool> isLoading = ValueNotifier(false);
  InvestmentListEntity investmentList = InvestmentListEntity.empty();

  void _getInvestments() async {
    isLoading.value = true;
    await _getInvestmentsUseCase();
    isLoading.value = false;
  }

  Future<void> _getInvestmentsUseCase() async {
    var response = await _investmentUseCase.getInvestments();
    response.map(ifResult, ifError);
  }

  void ifResult(InvestmentListEntity investmentListEntity) {
    investmentList = investmentListEntity;
    isLoading.value = false;
    notifyListeners();
  }

  void ifError(BaseFailure error) {
    SnackbarGlobal.show(error.message);
    isLoading.value = false;
  }
}
