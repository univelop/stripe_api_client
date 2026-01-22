// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_custom_fields_option.dart';

/// auto generated
class PaymentPagesCheckoutSessionCustomFieldsDropdown
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The value that will pre-fill on the payment page.
  String? defaultValue;

  ///  The options available for the customer to select. Up to 200 options allowed.
  Iterable<PaymentPagesCheckoutSessionCustomFieldsOption>? options;

  ///  The option selected by the customer. This will be the `value` for the option.
  String? value;

  /// Instantiates a new [PaymentPagesCheckoutSessionCustomFieldsDropdown] and sets the default values.
  PaymentPagesCheckoutSessionCustomFieldsDropdown() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionCustomFieldsDropdown
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionCustomFieldsDropdown();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['default_value'] =
        (node) => defaultValue = node.getStringValue();
    deserializerMap['options'] = (node) => options =
        node.getCollectionOfObjectValues<
                PaymentPagesCheckoutSessionCustomFieldsOption>(
            PaymentPagesCheckoutSessionCustomFieldsOption
                .createFromDiscriminatorValue);
    deserializerMap['value'] = (node) => value = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('default_value', defaultValue);
    writer.writeCollectionOfObjectValues<
        PaymentPagesCheckoutSessionCustomFieldsOption>('options', options);
    writer.writeStringValue('value', value);
    writer.writeAdditionalData(additionalData);
  }
}
