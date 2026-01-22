// ignore_for_file: type=lint
/// auto generated
///  The data source used to infer the customer's location.
enum CustomerTaxLocationSource {
  billingAddress('billing_address'),
  ipAddress('ip_address'),
  paymentMethod('payment_method'),
  shippingDestination('shipping_destination');

  const CustomerTaxLocationSource(this.value);
  final String value;
}
