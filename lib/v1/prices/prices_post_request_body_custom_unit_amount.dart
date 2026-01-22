// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
class PricesPostRequestBodyCustomUnitAmount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The maximum property
  int? maximum;

  ///  The minimum property
  int? minimum;

  ///  The preset property
  int? preset;

  /// Instantiates a new [PricesPostRequestBodyCustomUnitAmount] and sets the default values.
  PricesPostRequestBodyCustomUnitAmount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PricesPostRequestBodyCustomUnitAmount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PricesPostRequestBodyCustomUnitAmount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['maximum'] = (node) => maximum = node.getIntValue();
    deserializerMap['minimum'] = (node) => minimum = node.getIntValue();
    deserializerMap['preset'] = (node) => preset = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeIntValue('maximum', maximum);
    writer.writeIntValue('minimum', minimum);
    writer.writeIntValue('preset', preset);
    writer.writeAdditionalData(additionalData);
  }
}
