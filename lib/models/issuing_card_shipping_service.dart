// ignore_for_file: type=lint
/// auto generated
///  Shipment service, such as `standard` or `express`.
enum IssuingCardShippingService {
  express('express'),
  priority('priority'),
  standard('standard');

  const IssuingCardShippingService(this.value);
  final String value;
}
