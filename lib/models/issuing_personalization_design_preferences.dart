// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingPersonalizationDesignPreferences
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether we use this personalization design to create cards when one isn't specified. A connected account uses the Connect platform's default design if no personalization design is set as the default design.
  bool? isDefault;

  ///  Whether this personalization design is used to create cards when one is not specified and a default for this connected account does not exist.
  bool? isPlatformDefault;

  /// Instantiates a new [IssuingPersonalizationDesignPreferences] and sets the default values.
  IssuingPersonalizationDesignPreferences() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingPersonalizationDesignPreferences createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingPersonalizationDesignPreferences();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['is_default'] = (node) => isDefault = node.getBoolValue();
    deserializerMap['is_platform_default'] =
        (node) => isPlatformDefault = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('is_default', value: isDefault);
    writer.writeBoolValue('is_platform_default', value: isPlatformDefault);
    writer.writeAdditionalData(additionalData);
  }
}
