// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_shipping_cost_shipping_rate_data_delivery_estimate_maximum.dart';
import './invoices_post_request_body_shipping_cost_shipping_rate_data_delivery_estimate_minimum.dart';

/// auto generated
class InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimate
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The maximum property
  InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimateMaximum?
      maximum;

  ///  The minimum property
  InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimateMinimum?
      minimum;

  /// Instantiates a new [InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimate] and sets the default values.
  InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimate()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimate
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['maximum'] = (node) => maximum = node.getObjectValue<
            InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimateMaximum>(
        InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimateMaximum
            .createFromDiscriminatorValue);
    deserializerMap['minimum'] = (node) => minimum = node.getObjectValue<
            InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimateMinimum>(
        InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimateMinimum
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimateMaximum>(
        'maximum', maximum);
    writer.writeObjectValue<
            InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimateMinimum>(
        'minimum', minimum);
    writer.writeAdditionalData(additionalData);
  }
}
