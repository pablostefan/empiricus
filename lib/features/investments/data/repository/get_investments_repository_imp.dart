import 'package:empiricus/core/base_repository.dart';
import 'package:empiricus/core/error/base_failure.dart';
import 'package:empiricus/core/utils/result_state.dart';
import 'package:empiricus/features/investments/data/datasources/remote/get_investments_data_source.dart';
import 'package:empiricus/features/investments/domain/entities/investment_list_entity.dart';
import 'package:empiricus/features/investments/domain/repository/get_investments_repository.dart';

class GetInvestmentsRepositoryImp extends GetInvestmentsRepository implements BaseRepository {
  final GetInvestmentsDataSource _moviesDataSource;

  GetInvestmentsRepositoryImp(this._moviesDataSource);

  @override
  Future<ResultState<BaseFailure, InvestmentListEntity>> getInvestments() {
    return tryExecute<InvestmentListEntity>(() async {
      final response = await _moviesDataSource.getInvestments();
      return InvestmentListEntity.fromJson(response);
    });
  }
}
