// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class CustomUnitAmount implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The maximum unit amount the customer can specify for this item.
  int? maximum;

  ///  The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
  int? minimum;

  ///  The starting unit amount which can be updated by the customer.
  int? preset;

  /// Instantiates a new [CustomUnitAmount] and sets the default values.
  CustomUnitAmount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomUnitAmount createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomUnitAmount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['maximum'] = (node) => maximum = node.getIntValue();
    deserializerMap['minimum'] = (node) => minimum = node.getIntValue();
    deserializerMap['preset'] = (node) => preset = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('maximum', maximum);
    writer.writeIntValue('minimum', minimum);
    writer.writeIntValue('preset', preset);
    writer.writeAdditionalData(additionalData);
  }
}
