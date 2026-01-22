// ignore_for_file: type=lint
/// auto generated
///  Indicates how the payment method is intended to be used in the future. If not provided, this value defaults to `off_session`.
enum SetupIntentsPostRequestBodyUsage {
  offSession('off_session'),
  onSession('on_session');

  const SetupIntentsPostRequestBodyUsage(this.value);
  final String value;
}
