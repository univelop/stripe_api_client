// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_private_payment_methods_paypal_amount_details_line_item_payment_method_options_category.dart';

/// auto generated
class PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Type of the line item.
  PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptionsCategory?
      category;

  ///  Description of the line item.
  String? description;

  ///  The Stripe account ID of the connected account that sells the item. This is only needed when using [Separate Charges and Transfers](https://docs.stripe.com/connect/separate-charges-and-transfers).
  String? soldBy;

  /// Instantiates a new [PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptions] and sets the default values.
  PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['category'] = (node) => category = node.getEnumValue<
            PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptionsCategory>(
        (stringValue) =>
            PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptionsCategory
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['sold_by'] = (node) => soldBy = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptionsCategory>(
        'category', category, (e) => e?.value);
    writer.writeStringValue('description', description);
    writer.writeStringValue('sold_by', soldBy);
    writer.writeAdditionalData(additionalData);
  }
}
