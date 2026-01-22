// ignore_for_file: type=lint
/// auto generated
///  The tax calculation provider used for location resolution. Defaults to `stripe` when not using a [third-party provider](/tax/third-party-apps).
enum CustomerTaxProvider {
  anrok('anrok'),
  avalara('avalara'),
  sphere('sphere'),
  stripe('stripe');

  const CustomerTaxProvider(this.value);
  final String value;
}
