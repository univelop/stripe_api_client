// ignore_for_file: type=lint
/// auto generated
///  The status of the registration. This field is present for convenience and can be deduced from `active_from` and `expires_at`.
enum RegistrationStatus {
  active('active'),
  expired('expired'),
  scheduled('scheduled');

  const RegistrationStatus(this.value);
  final String value;
}
