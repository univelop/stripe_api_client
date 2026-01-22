// ignore_for_file: type=lint
/// auto generated
///  Whether this physical bundle is a standard Stripe offering or custom-made for you.
enum PhysicalBundleType {
  custom('custom'),
  standard('standard');

  const PhysicalBundleType(this.value);
  final String value;
}
