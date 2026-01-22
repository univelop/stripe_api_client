// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_custom_fields_label_type.dart';

/// auto generated
class PaymentLinksPostRequestBodyCustomFieldsLabel
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom property
  String? custom;

  ///  The type property
  PaymentLinksPostRequestBodyCustomFieldsLabelType? type_;

  /// Instantiates a new [PaymentLinksPostRequestBodyCustomFieldsLabel] and sets the default values.
  PaymentLinksPostRequestBodyCustomFieldsLabel() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyCustomFieldsLabel
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksPostRequestBodyCustomFieldsLabel();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['custom'] = (node) => custom = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentLinksPostRequestBodyCustomFieldsLabelType>(
            (stringValue) => PaymentLinksPostRequestBodyCustomFieldsLabelType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('custom', custom);
    writer.writeEnumValue<PaymentLinksPostRequestBodyCustomFieldsLabelType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
