// ignore_for_file: type=lint
/// auto generated
///  The status of the top-up is either `canceled`, `failed`, `pending`, `reversed`, or `succeeded`.
enum TopupStatus {
  canceled('canceled'),
  failed('failed'),
  pending('pending'),
  reversed('reversed'),
  succeeded('succeeded');

  const TopupStatus(this.value);
  final String value;
}
