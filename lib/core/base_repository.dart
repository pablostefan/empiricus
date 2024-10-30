import 'package:empiricus/core/error/base_failure.dart';
import 'package:empiricus/core/utils/result_state.dart';
import 'package:flutter/foundation.dart';

abstract class BaseRepository {
  Future<ResultState<BaseFailure, E>> tryExecute<E>(Future<E> Function() exec) async {
    try {
      E result = await exec();
      return IsResult(result);
    } on NetworkFailure catch (e) {
      _logErrorResponse(e);
      return IsError(e);
    } on Exception {
      final ExceptionFailure exceptionFailure = ExceptionFailure();
      _logErrorResponse(exceptionFailure);
      return IsError(exceptionFailure);
    }
  }

  void _logErrorResponse(BaseFailure failure) {
    debugPrint('[ERROR RESPONSE REPOSITORY]\n ${failure.toString()}');
  }
}
