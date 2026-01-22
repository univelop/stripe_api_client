// ignore_for_file: type=lint
/// auto generated
///  How card details were read in this transaction.
enum PaymentMethodInteracPresentReadMethod {
  contactEmv('contact_emv'),
  contactlessEmv('contactless_emv'),
  contactlessMagstripeMode('contactless_magstripe_mode'),
  magneticStripeFallback('magnetic_stripe_fallback'),
  magneticStripeTrack2('magnetic_stripe_track2');

  const PaymentMethodInteracPresentReadMethod(this.value);
  final String value;
}
