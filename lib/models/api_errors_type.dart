// ignore_for_file: type=lint
/// auto generated
///  The type of error returned. One of `api_error`, `card_error`, `idempotency_error`, or `invalid_request_error`
enum ApiErrorsType {
  apiError('api_error'),
  cardError('card_error'),
  idempotencyError('idempotency_error'),
  invalidRequestError('invalid_request_error');

  const ApiErrorsType(this.value);
  final String value;
}
