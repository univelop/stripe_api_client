// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './settings_post_request_body_head_office_address.dart';

/// auto generated
/// The place where your business is located.
class SettingsPostRequestBodyHeadOffice
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  SettingsPostRequestBodyHeadOfficeAddress? address;

  /// Instantiates a new [SettingsPostRequestBodyHeadOffice] and sets the default values.
  SettingsPostRequestBodyHeadOffice() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SettingsPostRequestBodyHeadOffice createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SettingsPostRequestBodyHeadOffice();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            SettingsPostRequestBodyHeadOfficeAddress>(
        SettingsPostRequestBodyHeadOfficeAddress.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SettingsPostRequestBodyHeadOfficeAddress>(
        'address', address);
    writer.writeAdditionalData(additionalData);
  }
}
