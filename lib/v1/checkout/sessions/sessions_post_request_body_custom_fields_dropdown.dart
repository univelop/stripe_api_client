// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_custom_fields_dropdown_options.dart';

/// auto generated
class SessionsPostRequestBodyCustomFieldsDropdown
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The default_value property
  String? defaultValue;

  ///  The options property
  Iterable<SessionsPostRequestBodyCustomFieldsDropdownOptions>? options;

  /// Instantiates a new [SessionsPostRequestBodyCustomFieldsDropdown] and sets the default values.
  SessionsPostRequestBodyCustomFieldsDropdown() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyCustomFieldsDropdown
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyCustomFieldsDropdown();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['default_value'] =
        (node) => defaultValue = node.getStringValue();
    deserializerMap['options'] = (node) => options =
        node.getCollectionOfObjectValues<
                SessionsPostRequestBodyCustomFieldsDropdownOptions>(
            SessionsPostRequestBodyCustomFieldsDropdownOptions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('default_value', defaultValue);
    writer.writeCollectionOfObjectValues<
        SessionsPostRequestBodyCustomFieldsDropdownOptions>('options', options);
    writer.writeAdditionalData(additionalData);
  }
}
