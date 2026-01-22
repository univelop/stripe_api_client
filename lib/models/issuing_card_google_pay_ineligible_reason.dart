// ignore_for_file: type=lint
/// auto generated
///  Reason the card is ineligible for Google Pay
enum IssuingCardGooglePayIneligibleReason {
  missingAgreement('missing_agreement'),
  missingCardholderContact('missing_cardholder_contact'),
  unsupportedRegion('unsupported_region');

  const IssuingCardGooglePayIneligibleReason(this.value);
  final String value;
}
