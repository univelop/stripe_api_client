// ignore_for_file: type=lint
/// auto generated
///  If set to `auto`, enables the collection of customer consent for promotional communications. The CheckoutSession will determine whether to display an option to opt into promotional communicationfrom the merchant depending on the customer's locale. Only available to US merchants.
enum PaymentPagesCheckoutSessionConsentCollectionPromotions {
  auto('auto'),
  none('none');

  const PaymentPagesCheckoutSessionConsentCollectionPromotions(this.value);
  final String value;
}
