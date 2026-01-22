// ignore_for_file: type=lint
/// auto generated
///  The tax calculation provider this account uses. Defaults to `stripe` when not using a [third-party provider](/tax/third-party-apps).
enum TaxProductResourceTaxSettingsDefaultsProvider {
  anrok('anrok'),
  avalara('avalara'),
  sphere('sphere'),
  stripe('stripe');

  const TaxProductResourceTaxSettingsDefaultsProvider(this.value);
  final String value;
}
