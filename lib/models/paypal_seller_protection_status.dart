// ignore_for_file: type=lint
/// auto generated
///  Indicates whether the transaction is eligible for PayPal's seller protection.
enum PaypalSellerProtectionStatus {
  eligible('eligible'),
  notEligible('not_eligible'),
  partiallyEligible('partially_eligible');

  const PaypalSellerProtectionStatus(this.value);
  final String value;
}
