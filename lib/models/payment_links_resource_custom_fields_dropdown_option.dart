// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentLinksResourceCustomFieldsDropdownOption
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The label for the option, displayed to the customer. Up to 100 characters.
  String? label;

  ///  The value for this option, not displayed to the customer, used by your integration to reconcile the option selected by the customer. Must be unique to this option, alphanumeric, and up to 100 characters.
  String? value;

  /// Instantiates a new [PaymentLinksResourceCustomFieldsDropdownOption] and sets the default values.
  PaymentLinksResourceCustomFieldsDropdownOption() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceCustomFieldsDropdownOption
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksResourceCustomFieldsDropdownOption();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['label'] = (node) => label = node.getStringValue();
    deserializerMap['value'] = (node) => value = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('label', label);
    writer.writeStringValue('value', value);
    writer.writeAdditionalData(additionalData);
  }
}
