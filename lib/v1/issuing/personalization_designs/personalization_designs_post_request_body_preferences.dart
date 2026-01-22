// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Information on whether this personalization design is used to create cards when one is not specified.
class PersonalizationDesignsPostRequestBodyPreferences
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The is_default property
  bool? isDefault;

  /// Instantiates a new [PersonalizationDesignsPostRequestBodyPreferences] and sets the default values.
  PersonalizationDesignsPostRequestBodyPreferences() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PersonalizationDesignsPostRequestBodyPreferences
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PersonalizationDesignsPostRequestBodyPreferences();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['is_default'] = (node) => isDefault = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('is_default', value: isDefault);
    writer.writeAdditionalData(additionalData);
  }
}
