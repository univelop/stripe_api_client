// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_shipping_options_shipping_rate_data_delivery_estimate_maximum_unit.dart';

/// auto generated
class SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMaximum
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The unit property
  SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMaximumUnit?
      unit;

  ///  The value property
  int? value;

  /// Instantiates a new [SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMaximum] and sets the default values.
  SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMaximum()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMaximum
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMaximum();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['unit'] = (node) => unit = node.getEnumValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMaximumUnit>(
        (stringValue) =>
            SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMaximumUnit
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['value'] = (node) => value = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimateMaximumUnit>(
        'unit', unit, (e) => e?.value);
    writer.writeIntValue('value', value);
    writer.writeAdditionalData(additionalData);
  }
}
