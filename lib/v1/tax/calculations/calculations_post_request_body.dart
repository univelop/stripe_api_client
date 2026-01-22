// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './calculations_post_request_body_customer_details.dart';
import './calculations_post_request_body_line_items.dart';
import './calculations_post_request_body_ship_from_details.dart';
import './calculations_post_request_body_shipping_cost.dart';

/// auto generated
class CalculationsPostRequestBody implements Parsable {
  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The ID of an existing customer to use for this calculation. If provided, the customer's address and tax IDs are copied to `customer_details`.
  String? customer;

  ///  Details about the customer, including address and tax IDs.
  CalculationsPostRequestBodyCustomerDetails? customerDetails;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A list of items the customer is purchasing.
  Iterable<CalculationsPostRequestBodyLineItems>? lineItems;

  ///  Details about the address from which the goods are being shipped.
  CalculationsPostRequestBodyShipFromDetails? shipFromDetails;

  ///  Shipping cost details to be used for the calculation.
  CalculationsPostRequestBodyShippingCost? shippingCost;

  ///  Timestamp of date at which the tax rules and rates in effect applies for the calculation. Measured in seconds since the Unix epoch. Can be up to 48 hours in the past, and up to 48 hours in the future.
  int? taxDate;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CalculationsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CalculationsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_details'] = (node) => customerDetails =
        node.getObjectValue<CalculationsPostRequestBodyCustomerDetails>(
            CalculationsPostRequestBodyCustomerDetails
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['line_items'] = (node) => lineItems =
        node.getCollectionOfObjectValues<CalculationsPostRequestBodyLineItems>(
            CalculationsPostRequestBodyLineItems.createFromDiscriminatorValue);
    deserializerMap['ship_from_details'] = (node) => shipFromDetails =
        node.getObjectValue<CalculationsPostRequestBodyShipFromDetails>(
            CalculationsPostRequestBodyShipFromDetails
                .createFromDiscriminatorValue);
    deserializerMap['shipping_cost'] = (node) => shippingCost =
        node.getObjectValue<CalculationsPostRequestBodyShippingCost>(
            CalculationsPostRequestBodyShippingCost
                .createFromDiscriminatorValue);
    deserializerMap['tax_date'] = (node) => taxDate = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer', customer);
    writer.writeObjectValue<CalculationsPostRequestBodyCustomerDetails>(
        'customer_details', customerDetails);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeCollectionOfObjectValues<CalculationsPostRequestBodyLineItems>(
        'line_items', lineItems);
    writer.writeObjectValue<CalculationsPostRequestBodyShipFromDetails>(
        'ship_from_details', shipFromDetails);
    writer.writeObjectValue<CalculationsPostRequestBodyShippingCost>(
        'shipping_cost', shippingCost);
    writer.writeIntValue('tax_date', taxDate);
  }
}
