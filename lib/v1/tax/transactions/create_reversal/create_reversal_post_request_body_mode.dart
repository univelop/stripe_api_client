// ignore_for_file: type=lint
/// auto generated
///  If `partial`, the provided line item or shipping cost amounts are reversed. If `full`, the original transaction is fully reversed.
enum CreateReversalPostRequestBodyMode {
  full('full'),
  partial('partial');

  const CreateReversalPostRequestBodyMode(this.value);
  final String value;
}
