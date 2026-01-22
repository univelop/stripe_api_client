// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_amount_details_client_resource_tip.dart';
import './payment_flows_amount_details_line_items.dart';
import './payment_flows_amount_details_resource_shipping.dart';
import './payment_flows_amount_details_resource_tax.dart';

/// auto generated
class PaymentFlowsAmountDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The total discount applied on the transaction represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). An integer greater than 0.This field is mutually exclusive with the `amount_details[line_items][#][discount_amount]` field.
  int? discountAmount;

  ///  A list of line items, each containing information about a product in the PaymentIntent. There is a maximum of 200 line items.
  PaymentFlowsAmountDetailsLineItems? lineItems;

  ///  The shipping property
  PaymentFlowsAmountDetailsResourceShipping? shipping;

  ///  The tax property
  PaymentFlowsAmountDetailsResourceTax? tax;

  ///  The tip property
  PaymentFlowsAmountDetailsClientResourceTip? tip;

  /// Instantiates a new [PaymentFlowsAmountDetails] and sets the default values.
  PaymentFlowsAmountDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsAmountDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentFlowsAmountDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discount_amount'] =
        (node) => discountAmount = node.getIntValue();
    deserializerMap['line_items'] = (node) => lineItems =
        node.getObjectValue<PaymentFlowsAmountDetailsLineItems>(
            PaymentFlowsAmountDetailsLineItems.createFromDiscriminatorValue);
    deserializerMap['shipping'] = (node) => shipping = node.getObjectValue<
            PaymentFlowsAmountDetailsResourceShipping>(
        PaymentFlowsAmountDetailsResourceShipping.createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax =
        node.getObjectValue<PaymentFlowsAmountDetailsResourceTax>(
            PaymentFlowsAmountDetailsResourceTax.createFromDiscriminatorValue);
    deserializerMap['tip'] = (node) => tip =
        node.getObjectValue<PaymentFlowsAmountDetailsClientResourceTip>(
            PaymentFlowsAmountDetailsClientResourceTip
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('discount_amount', discountAmount);
    writer.writeObjectValue<PaymentFlowsAmountDetailsLineItems>(
        'line_items', lineItems);
    writer.writeObjectValue<PaymentFlowsAmountDetailsResourceShipping>(
        'shipping', shipping);
    writer.writeObjectValue<PaymentFlowsAmountDetailsResourceTax>('tax', tax);
    writer.writeObjectValue<PaymentFlowsAmountDetailsClientResourceTip>(
        'tip', tip);
    writer.writeAdditionalData(additionalData);
  }
}
