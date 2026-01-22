// ignore_for_file: type=lint
/// auto generated
///  Reason the card is ineligible for Apple Pay
enum IssuingCardApplePayIneligibleReason {
  missingAgreement('missing_agreement'),
  missingCardholderContact('missing_cardholder_contact'),
  unsupportedRegion('unsupported_region');

  const IssuingCardApplePayIneligibleReason(this.value);
  final String value;
}
