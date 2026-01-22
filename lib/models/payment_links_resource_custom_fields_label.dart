// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_resource_custom_fields_label_type.dart';

/// auto generated
class PaymentLinksResourceCustomFieldsLabel
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Custom text for the label, displayed to the customer. Up to 50 characters.
  String? custom;

  ///  The type of the label.
  PaymentLinksResourceCustomFieldsLabelType? type_;

  /// Instantiates a new [PaymentLinksResourceCustomFieldsLabel] and sets the default values.
  PaymentLinksResourceCustomFieldsLabel() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceCustomFieldsLabel createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksResourceCustomFieldsLabel();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['custom'] = (node) => custom = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentLinksResourceCustomFieldsLabelType>(
            (stringValue) => PaymentLinksResourceCustomFieldsLabelType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('custom', custom);
    writer.writeEnumValue<PaymentLinksResourceCustomFieldsLabelType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
