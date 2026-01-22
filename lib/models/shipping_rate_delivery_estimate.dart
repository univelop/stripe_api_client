// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './shipping_rate_delivery_estimate_bound.dart';

/// auto generated
class ShippingRateDeliveryEstimate implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
  ShippingRateDeliveryEstimateBound? maximum;

  ///  The lower bound of the estimated range. If empty, represents no lower bound.
  ShippingRateDeliveryEstimateBound? minimum;

  /// Instantiates a new [ShippingRateDeliveryEstimate] and sets the default values.
  ShippingRateDeliveryEstimate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ShippingRateDeliveryEstimate createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ShippingRateDeliveryEstimate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['maximum'] = (node) => maximum =
        node.getObjectValue<ShippingRateDeliveryEstimateBound>(
            ShippingRateDeliveryEstimateBound.createFromDiscriminatorValue);
    deserializerMap['minimum'] = (node) => minimum =
        node.getObjectValue<ShippingRateDeliveryEstimateBound>(
            ShippingRateDeliveryEstimateBound.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ShippingRateDeliveryEstimateBound>(
        'maximum', maximum);
    writer.writeObjectValue<ShippingRateDeliveryEstimateBound>(
        'minimum', minimum);
    writer.writeAdditionalData(additionalData);
  }
}
