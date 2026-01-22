// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './calculations_post_request_body_customer_details_tax_ids_type.dart';

/// auto generated
class CalculationsPostRequestBodyCustomerDetailsTaxIds
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type property
  CalculationsPostRequestBodyCustomerDetailsTaxIdsType? type_;

  ///  The value property
  String? value;

  /// Instantiates a new [CalculationsPostRequestBodyCustomerDetailsTaxIds] and sets the default values.
  CalculationsPostRequestBodyCustomerDetailsTaxIds() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CalculationsPostRequestBodyCustomerDetailsTaxIds
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CalculationsPostRequestBodyCustomerDetailsTaxIds();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CalculationsPostRequestBodyCustomerDetailsTaxIdsType>(
            (stringValue) =>
                CalculationsPostRequestBodyCustomerDetailsTaxIdsType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['value'] = (node) => value = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<CalculationsPostRequestBodyCustomerDetailsTaxIdsType>(
        'type', type_, (e) => e?.value);
    writer.writeStringValue('value', value);
    writer.writeAdditionalData(additionalData);
  }
}
