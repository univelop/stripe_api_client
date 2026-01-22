// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_customer_details_tax_ids_type.dart';

/// auto generated
class CreatePreviewPostRequestBodyCustomerDetailsTaxIds
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type property
  CreatePreviewPostRequestBodyCustomerDetailsTaxIdsType? type_;

  ///  The value property
  String? value;

  /// Instantiates a new [CreatePreviewPostRequestBodyCustomerDetailsTaxIds] and sets the default values.
  CreatePreviewPostRequestBodyCustomerDetailsTaxIds() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyCustomerDetailsTaxIds
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyCustomerDetailsTaxIds();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<CreatePreviewPostRequestBodyCustomerDetailsTaxIdsType>(
            (stringValue) =>
                CreatePreviewPostRequestBodyCustomerDetailsTaxIdsType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['value'] = (node) => value = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeEnumValue<CreatePreviewPostRequestBodyCustomerDetailsTaxIdsType>(
            'type', type_, (e) => e?.value);
    writer.writeStringValue('value', value);
    writer.writeAdditionalData(additionalData);
  }
}
