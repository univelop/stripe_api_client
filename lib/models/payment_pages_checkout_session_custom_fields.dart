// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_custom_fields_dropdown.dart';
import './payment_pages_checkout_session_custom_fields_label.dart';
import './payment_pages_checkout_session_custom_fields_numeric.dart';
import './payment_pages_checkout_session_custom_fields_text.dart';
import './payment_pages_checkout_session_custom_fields_type.dart';

/// auto generated
class PaymentPagesCheckoutSessionCustomFields
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The dropdown property
  PaymentPagesCheckoutSessionCustomFieldsDropdown? dropdown;

  ///  String of your choice that your integration can use to reconcile this field. Must be unique to this field, alphanumeric, and up to 200 characters.
  String? key;

  ///  The label property
  PaymentPagesCheckoutSessionCustomFieldsLabel? label;

  ///  The numeric property
  PaymentPagesCheckoutSessionCustomFieldsNumeric? numeric;

  ///  Whether the customer is required to complete the field before completing the Checkout Session. Defaults to `false`.
  bool? optional;

  ///  The text property
  PaymentPagesCheckoutSessionCustomFieldsText? text;

  ///  The type of the field.
  PaymentPagesCheckoutSessionCustomFieldsType? type_;

  /// Instantiates a new [PaymentPagesCheckoutSessionCustomFields] and sets the default values.
  PaymentPagesCheckoutSessionCustomFields() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionCustomFields createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentPagesCheckoutSessionCustomFields();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['dropdown'] = (node) => dropdown =
        node.getObjectValue<PaymentPagesCheckoutSessionCustomFieldsDropdown>(
            PaymentPagesCheckoutSessionCustomFieldsDropdown
                .createFromDiscriminatorValue);
    deserializerMap['key'] = (node) => key = node.getStringValue();
    deserializerMap['label'] = (node) => label =
        node.getObjectValue<PaymentPagesCheckoutSessionCustomFieldsLabel>(
            PaymentPagesCheckoutSessionCustomFieldsLabel
                .createFromDiscriminatorValue);
    deserializerMap['numeric'] = (node) => numeric =
        node.getObjectValue<PaymentPagesCheckoutSessionCustomFieldsNumeric>(
            PaymentPagesCheckoutSessionCustomFieldsNumeric
                .createFromDiscriminatorValue);
    deserializerMap['optional'] = (node) => optional = node.getBoolValue();
    deserializerMap['text'] = (node) => text =
        node.getObjectValue<PaymentPagesCheckoutSessionCustomFieldsText>(
            PaymentPagesCheckoutSessionCustomFieldsText
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentPagesCheckoutSessionCustomFieldsType>(
            (stringValue) => PaymentPagesCheckoutSessionCustomFieldsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentPagesCheckoutSessionCustomFieldsDropdown>(
        'dropdown', dropdown);
    writer.writeStringValue('key', key);
    writer.writeObjectValue<PaymentPagesCheckoutSessionCustomFieldsLabel>(
        'label', label);
    writer.writeObjectValue<PaymentPagesCheckoutSessionCustomFieldsNumeric>(
        'numeric', numeric);
    writer.writeBoolValue('optional', value: optional);
    writer.writeObjectValue<PaymentPagesCheckoutSessionCustomFieldsText>(
        'text', text);
    writer.writeEnumValue<PaymentPagesCheckoutSessionCustomFieldsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
