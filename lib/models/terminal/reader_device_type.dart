// ignore_for_file: type=lint
/// auto generated
///  Device type of the reader.
enum ReaderDeviceType {
  bbposChipper2x('bbpos_chipper2x'),
  bbposWisepad3('bbpos_wisepad3'),
  bbposWiseposE('bbpos_wisepos_e'),
  mobilePhoneReader('mobile_phone_reader'),
  simulatedStripeS700('simulated_stripe_s700'),
  simulatedWiseposE('simulated_wisepos_e'),
  stripeM2('stripe_m2'),
  stripeS700('stripe_s700'),
  verifoneP400('verifone_P400');

  const ReaderDeviceType(this.value);
  final String value;
}
