// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_custom_fields_dropdown.dart';
import './sessions_post_request_body_custom_fields_label.dart';
import './sessions_post_request_body_custom_fields_numeric.dart';
import './sessions_post_request_body_custom_fields_text.dart';
import './sessions_post_request_body_custom_fields_type.dart';

/// auto generated
class SessionsPostRequestBodyCustomFields
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The dropdown property
  SessionsPostRequestBodyCustomFieldsDropdown? dropdown;

  ///  The key property
  String? key;

  ///  The label property
  SessionsPostRequestBodyCustomFieldsLabel? label;

  ///  The numeric property
  SessionsPostRequestBodyCustomFieldsNumeric? numeric;

  ///  The optional property
  bool? optional;

  ///  The text property
  SessionsPostRequestBodyCustomFieldsText? text;

  ///  The type property
  SessionsPostRequestBodyCustomFieldsType? type_;

  /// Instantiates a new [SessionsPostRequestBodyCustomFields] and sets the default values.
  SessionsPostRequestBodyCustomFields() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyCustomFields createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyCustomFields();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['dropdown'] = (node) => dropdown =
        node.getObjectValue<SessionsPostRequestBodyCustomFieldsDropdown>(
            SessionsPostRequestBodyCustomFieldsDropdown
                .createFromDiscriminatorValue);
    deserializerMap['key'] = (node) => key = node.getStringValue();
    deserializerMap['label'] = (node) => label = node.getObjectValue<
            SessionsPostRequestBodyCustomFieldsLabel>(
        SessionsPostRequestBodyCustomFieldsLabel.createFromDiscriminatorValue);
    deserializerMap['numeric'] = (node) => numeric =
        node.getObjectValue<SessionsPostRequestBodyCustomFieldsNumeric>(
            SessionsPostRequestBodyCustomFieldsNumeric
                .createFromDiscriminatorValue);
    deserializerMap['optional'] = (node) => optional = node.getBoolValue();
    deserializerMap['text'] = (node) => text = node.getObjectValue<
            SessionsPostRequestBodyCustomFieldsText>(
        SessionsPostRequestBodyCustomFieldsText.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<SessionsPostRequestBodyCustomFieldsType>(
            (stringValue) => SessionsPostRequestBodyCustomFieldsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SessionsPostRequestBodyCustomFieldsDropdown>(
        'dropdown', dropdown);
    writer.writeStringValue('key', key);
    writer.writeObjectValue<SessionsPostRequestBodyCustomFieldsLabel>(
        'label', label);
    writer.writeObjectValue<SessionsPostRequestBodyCustomFieldsNumeric>(
        'numeric', numeric);
    writer.writeBoolValue('optional', value: optional);
    writer.writeObjectValue<SessionsPostRequestBodyCustomFieldsText>(
        'text', text);
    writer.writeEnumValue<SessionsPostRequestBodyCustomFieldsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
