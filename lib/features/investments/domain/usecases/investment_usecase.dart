import 'package:empiricus/core/error/base_failure.dart';
import 'package:empiricus/core/utils/result_state.dart';
import 'package:empiricus/features/investments/domain/entities/investment_list_entity.dart';

abstract class InvestmentUseCase {
  Future<ResultState<BaseFailure, InvestmentListEntity>> getInvestments();
}
