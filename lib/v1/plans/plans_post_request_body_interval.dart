// ignore_for_file: type=lint
/// auto generated
///  Specifies billing frequency. Either `day`, `week`, `month` or `year`.
enum PlansPostRequestBodyInterval {
  day('day'),
  month('month'),
  week('week'),
  year('year');

  const PlansPostRequestBodyInterval(this.value);
  final String value;
}
