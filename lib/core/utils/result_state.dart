sealed class ResultState<TError, TResult> {
  const ResultState();

  T map<T>(T Function(TResult result) ifResult, T Function(TError error) ifError) {
    return switch (this) {
      IsError<TError, TResult> error => ifError(error.value),
      IsResult<TError, TResult> result => ifResult(result.value),
    };
  }
}

class IsError<TError, TResult> extends ResultState<TError, TResult> {
  final TError value;

  const IsError(this.value);
}

class IsResult<TError, TResult> extends ResultState<TError, TResult> {
  final TResult value;

  const IsResult(this.value);
}
