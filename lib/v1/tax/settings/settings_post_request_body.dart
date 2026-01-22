// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './settings_post_request_body_defaults.dart';
import './settings_post_request_body_head_office.dart';

/// auto generated
class SettingsPostRequestBody implements Parsable {
  ///  Default configuration to be used on Stripe Tax calculations.
  SettingsPostRequestBodyDefaults? defaults;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The place where your business is located.
  SettingsPostRequestBodyHeadOffice? headOffice;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SettingsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SettingsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['defaults'] = (node) => defaults =
        node.getObjectValue<SettingsPostRequestBodyDefaults>(
            SettingsPostRequestBodyDefaults.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['head_office'] = (node) => headOffice =
        node.getObjectValue<SettingsPostRequestBodyHeadOffice>(
            SettingsPostRequestBodyHeadOffice.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SettingsPostRequestBodyDefaults>(
        'defaults', defaults);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<SettingsPostRequestBodyHeadOffice>(
        'head_office', headOffice);
  }
}
