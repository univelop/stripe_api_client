// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_shipping_cost_member1_shipping_rate_data_delivery_estimate_maximum.dart';
import './with_invoice_post_request_body_shipping_cost_member1_shipping_rate_data_delivery_estimate_minimum.dart';

/// auto generated
class WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimate
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The maximum property
  WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMaximum?
      maximum;

  ///  The minimum property
  WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMinimum?
      minimum;

  /// Instantiates a new [WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimate] and sets the default values.
  WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimate()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimate
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['maximum'] = (node) => maximum = node.getObjectValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMaximum>(
        WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMaximum
            .createFromDiscriminatorValue);
    deserializerMap['minimum'] = (node) => minimum = node.getObjectValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMinimum>(
        WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMinimum
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMaximum>(
        'maximum', maximum);
    writer.writeObjectValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMinimum>(
        'minimum', minimum);
    writer.writeAdditionalData(additionalData);
  }
}
