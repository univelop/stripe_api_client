// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SessionsPostRequestBodyLineItemsAdjustableQuantity
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

  /// Instantiates a new [SessionsPostRequestBodyLineItemsAdjustableQuantity] and sets the default values.
  SessionsPostRequestBodyLineItemsAdjustableQuantity() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyLineItemsAdjustableQuantity
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyLineItemsAdjustableQuantity();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['maximum'] = (node) => maximum = node.getIntValue();
    deserializerMap['minimum'] = (node) => minimum = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeIntValue('maximum', maximum);
    writer.writeIntValue('minimum', minimum);
    writer.writeAdditionalData(additionalData);
  }
}
