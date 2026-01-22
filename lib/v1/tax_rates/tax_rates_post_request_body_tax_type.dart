// ignore_for_file: type=lint
/// auto generated
///  The high-level tax type, such as `vat` or `sales_tax`.
enum TaxRatesPostRequestBodyTaxType {
  amusementTax('amusement_tax'),
  communicationsTax('communications_tax'),
  gst('gst'),
  hst('hst'),
  igst('igst'),
  jct('jct'),
  leaseTax('lease_tax'),
  pst('pst'),
  qst('qst'),
  retailDeliveryFee('retail_delivery_fee'),
  rst('rst'),
  salesTax('sales_tax'),
  serviceTax('service_tax'),
  vat('vat');

  const TaxRatesPostRequestBodyTaxType(this.value);
  final String value;
}
