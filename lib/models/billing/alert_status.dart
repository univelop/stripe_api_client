// ignore_for_file: type=lint
/// auto generated
///  Status of the alert. This can be active, inactive or archived.
enum AlertStatus {
  active('active'),
  archived('archived'),
  inactive('inactive');

  const AlertStatus(this.value);
  final String value;
}
