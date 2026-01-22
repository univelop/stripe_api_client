// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './shipping_rates_post_request_body_delivery_estimate_maximum.dart';
import './shipping_rates_post_request_body_delivery_estimate_minimum.dart';

/// auto generated
/// The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
class ShippingRatesPostRequestBodyDeliveryEstimate
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The maximum property
  ShippingRatesPostRequestBodyDeliveryEstimateMaximum? maximum;

  ///  The minimum property
  ShippingRatesPostRequestBodyDeliveryEstimateMinimum? minimum;

  /// Instantiates a new [ShippingRatesPostRequestBodyDeliveryEstimate] and sets the default values.
  ShippingRatesPostRequestBodyDeliveryEstimate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ShippingRatesPostRequestBodyDeliveryEstimate
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ShippingRatesPostRequestBodyDeliveryEstimate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['maximum'] = (node) => maximum = node
        .getObjectValue<ShippingRatesPostRequestBodyDeliveryEstimateMaximum>(
            ShippingRatesPostRequestBodyDeliveryEstimateMaximum
                .createFromDiscriminatorValue);
    deserializerMap['minimum'] = (node) => minimum = node
        .getObjectValue<ShippingRatesPostRequestBodyDeliveryEstimateMinimum>(
            ShippingRatesPostRequestBodyDeliveryEstimateMinimum
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<ShippingRatesPostRequestBodyDeliveryEstimateMaximum>(
            'maximum', maximum);
    writer
        .writeObjectValue<ShippingRatesPostRequestBodyDeliveryEstimateMinimum>(
            'minimum', minimum);
    writer.writeAdditionalData(additionalData);
  }
}
