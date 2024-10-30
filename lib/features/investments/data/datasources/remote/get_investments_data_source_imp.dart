import 'package:empiricus/core/infra/http/http_service.dart';
import 'package:empiricus/features/investments/data/datasources/remote/get_investments_data_source.dart';

class GetInvestmentsDataSourceImp extends GetInvestmentsDataSource {
  final HttpService _httpService;

  GetInvestmentsDataSourceImp(this._httpService);

  @override
  Future<Map<String, dynamic>> getInvestments() async {
    final response = await _httpService.get("mock/list.json");
    return response.data;
  }
}
