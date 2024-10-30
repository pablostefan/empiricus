import 'package:empiricus/core/error/base_failure.dart';
import 'package:empiricus/core/utils/result_state.dart';
import 'package:empiricus/features/investments/domain/entities/investment_list_entity.dart';
import 'package:empiricus/features/investments/domain/repository/get_investments_repository.dart';
import 'package:empiricus/features/investments/domain/usecases/investment_usecase.dart';

class InvestmentUseCaseImp extends InvestmentUseCase {
  final GetInvestmentsRepository _getInvestmentsRepository;

  InvestmentUseCaseImp(this._getInvestmentsRepository);

  @override
  Future<ResultState<BaseFailure, InvestmentListEntity>> getInvestments() async {
    return await _getInvestmentsRepository.getInvestments();
  }
}
