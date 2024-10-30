import 'package:dio/dio.dart';
import 'package:empiricus/core/infra/http/dio_http_service_imp.dart';
import 'package:empiricus/core/infra/http/http_service.dart';
import 'package:empiricus/core/utils/api_utils.dart';
import 'package:empiricus/features/auth/data/datasources/mock/login_data_source.dart';
import 'package:empiricus/features/auth/data/datasources/mock/login_data_source_imp.dart';
import 'package:empiricus/features/auth/data/repository/login_repository_imp.dart';
import 'package:empiricus/features/auth/domain/repository/login_repository.dart';
import 'package:empiricus/features/auth/domain/usecases/auth_usecase.dart';
import 'package:empiricus/features/auth/domain/usecases/auth_usecase_imp.dart';
import 'package:empiricus/features/auth/presentation/controllers/auth_controller.dart';
import 'package:empiricus/features/investments/data/datasources/remote/get_investments_data_source.dart';
import 'package:empiricus/features/investments/data/datasources/remote/get_investments_data_source_imp.dart';
import 'package:empiricus/features/investments/data/repository/get_investments_repository_imp.dart';
import 'package:empiricus/features/investments/domain/repository/get_investments_repository.dart';
import 'package:empiricus/features/investments/domain/usecases/investment_usecase.dart';
import 'package:empiricus/features/investments/domain/usecases/investment_usecase_imp.dart';
import 'package:empiricus/features/investments/presentation/controllers/investment_controller.dart';
import 'package:get_it/get_it.dart';

class Injection {
  static void init() {
    GetIt getIt = GetIt.instance;

    getIt.registerLazySingleton<Dio>(() => Dio(BaseOptions(baseUrl: API.baseUrl)));
    getIt.registerLazySingleton<HttpService>(() => DioHttpServiceImp(getIt()));

    getIt.registerLazySingleton<GetInvestmentsDataSource>(() => GetInvestmentsDataSourceImp(getIt()));
    getIt.registerLazySingleton<GetInvestmentsRepository>(() => GetInvestmentsRepositoryImp(getIt()));
    getIt.registerLazySingleton<InvestmentUseCase>(() => InvestmentUseCaseImp(getIt()));

    getIt.registerLazySingleton<LoginDataSource>(() => LoginDataSourceImp());
    getIt.registerLazySingleton<LoginRepository>(() => LoginRepositoryImp(getIt()));
    getIt.registerLazySingleton<AuthUseCase>(() => AuthUseCaseImp(getIt()));

    getIt.registerLazySingleton<InvestmentController>(() => InvestmentController(getIt()));
    getIt.registerFactory<AuthController>(() => AuthController(getIt()));
  }
}
