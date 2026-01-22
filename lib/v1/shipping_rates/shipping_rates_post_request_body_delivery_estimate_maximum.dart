// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './shipping_rates_post_request_body_delivery_estimate_maximum_unit.dart';

/// auto generated
class ShippingRatesPostRequestBodyDeliveryEstimateMaximum
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The unit property
  ShippingRatesPostRequestBodyDeliveryEstimateMaximumUnit? unit;

  ///  The value property
  int? value;

  /// Instantiates a new [ShippingRatesPostRequestBodyDeliveryEstimateMaximum] and sets the default values.
  ShippingRatesPostRequestBodyDeliveryEstimateMaximum() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ShippingRatesPostRequestBodyDeliveryEstimateMaximum
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ShippingRatesPostRequestBodyDeliveryEstimateMaximum();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['unit'] = (node) => unit = node
        .getEnumValue<ShippingRatesPostRequestBodyDeliveryEstimateMaximumUnit>(
            (stringValue) =>
                ShippingRatesPostRequestBodyDeliveryEstimateMaximumUnit.values
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
            ShippingRatesPostRequestBodyDeliveryEstimateMaximumUnit>(
        'unit', unit, (e) => e?.value);
    writer.writeIntValue('value', value);
    writer.writeAdditionalData(additionalData);
  }
}
