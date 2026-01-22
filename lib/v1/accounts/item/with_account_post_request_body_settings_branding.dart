// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithAccountPostRequestBodySettingsBranding
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The icon property
  String? icon;

  ///  The logo property
  String? logo;

  ///  The primary_color property
  String? primaryColor;

  ///  The secondary_color property
  String? secondaryColor;

  /// Instantiates a new [WithAccountPostRequestBodySettingsBranding] and sets the default values.
  WithAccountPostRequestBodySettingsBranding() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodySettingsBranding
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithAccountPostRequestBodySettingsBranding();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['icon'] = (node) => icon = node.getStringValue();
    deserializerMap['logo'] = (node) => logo = node.getStringValue();
    deserializerMap['primary_color'] =
        (node) => primaryColor = node.getStringValue();
    deserializerMap['secondary_color'] =
        (node) => secondaryColor = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('icon', icon);
    writer.writeStringValue('logo', logo);
    writer.writeStringValue('primary_color', primaryColor);
    writer.writeStringValue('secondary_color', secondaryColor);
    writer.writeAdditionalData(additionalData);
  }
}
