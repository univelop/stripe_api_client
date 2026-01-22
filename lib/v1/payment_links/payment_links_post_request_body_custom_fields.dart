// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_custom_fields_dropdown.dart';
import './payment_links_post_request_body_custom_fields_label.dart';
import './payment_links_post_request_body_custom_fields_numeric.dart';
import './payment_links_post_request_body_custom_fields_text.dart';
import './payment_links_post_request_body_custom_fields_type.dart';

/// auto generated
class PaymentLinksPostRequestBodyCustomFields
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The dropdown property
  PaymentLinksPostRequestBodyCustomFieldsDropdown? dropdown;

  ///  The key property
  String? key;

  ///  The label property
  PaymentLinksPostRequestBodyCustomFieldsLabel? label;

  ///  The numeric property
  PaymentLinksPostRequestBodyCustomFieldsNumeric? numeric;

  ///  The optional property
  bool? optional;

  ///  The text property
  PaymentLinksPostRequestBodyCustomFieldsText? text;

  ///  The type property
  PaymentLinksPostRequestBodyCustomFieldsType? type_;

  /// Instantiates a new [PaymentLinksPostRequestBodyCustomFields] and sets the default values.
  PaymentLinksPostRequestBodyCustomFields() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyCustomFields createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksPostRequestBodyCustomFields();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['dropdown'] = (node) => dropdown =
        node.getObjectValue<PaymentLinksPostRequestBodyCustomFieldsDropdown>(
            PaymentLinksPostRequestBodyCustomFieldsDropdown
                .createFromDiscriminatorValue);
    deserializerMap['key'] = (node) => key = node.getStringValue();
    deserializerMap['label'] = (node) => label =
        node.getObjectValue<PaymentLinksPostRequestBodyCustomFieldsLabel>(
            PaymentLinksPostRequestBodyCustomFieldsLabel
                .createFromDiscriminatorValue);
    deserializerMap['numeric'] = (node) => numeric =
        node.getObjectValue<PaymentLinksPostRequestBodyCustomFieldsNumeric>(
            PaymentLinksPostRequestBodyCustomFieldsNumeric
                .createFromDiscriminatorValue);
    deserializerMap['optional'] = (node) => optional = node.getBoolValue();
    deserializerMap['text'] = (node) => text =
        node.getObjectValue<PaymentLinksPostRequestBodyCustomFieldsText>(
            PaymentLinksPostRequestBodyCustomFieldsText
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentLinksPostRequestBodyCustomFieldsType>(
            (stringValue) => PaymentLinksPostRequestBodyCustomFieldsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentLinksPostRequestBodyCustomFieldsDropdown>(
        'dropdown', dropdown);
    writer.writeStringValue('key', key);
    writer.writeObjectValue<PaymentLinksPostRequestBodyCustomFieldsLabel>(
        'label', label);
    writer.writeObjectValue<PaymentLinksPostRequestBodyCustomFieldsNumeric>(
        'numeric', numeric);
    writer.writeBoolValue('optional', value: optional);
    writer.writeObjectValue<PaymentLinksPostRequestBodyCustomFieldsText>(
        'text', text);
    writer.writeEnumValue<PaymentLinksPostRequestBodyCustomFieldsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
