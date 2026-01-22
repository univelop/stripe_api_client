// ignore_for_file: type=lint
/// auto generated
///  The level of the jurisdiction that imposes this tax rate. Will be `null` for manually defined tax rates.
enum TaxRateJurisdictionLevel {
  city('city'),
  country('country'),
  county('county'),
  district('district'),
  multiple('multiple'),
  state('state');

  const TaxRateJurisdictionLevel(this.value);
  final String value;
}
