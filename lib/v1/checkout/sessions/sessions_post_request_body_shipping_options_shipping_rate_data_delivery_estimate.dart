// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_shipping_options_shipping_rate_data_delivery_estimate_maximum.dart';
import './sessions_post_request_body_shipping_options_shipping_rate_data_delivery_estimate_minimum.dart';

/// auto generated
class SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimate
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The maximum property
  SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMaximum?
      maximum;

  ///  The minimum property
  SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMinimum?
      minimum;

  /// Instantiates a new [SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimate] and sets the default values.
  SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimate()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimate
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['maximum'] = (node) => maximum = node.getObjectValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMaximum>(
        SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMaximum
            .createFromDiscriminatorValue);
    deserializerMap['minimum'] = (node) => minimum = node.getObjectValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMinimum>(
        SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMinimum
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMaximum>(
        'maximum', maximum);
    writer.writeObjectValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMinimum>(
        'minimum', minimum);
    writer.writeAdditionalData(additionalData);
  }
}
