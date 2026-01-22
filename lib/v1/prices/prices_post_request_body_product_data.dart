// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './prices_post_request_body_product_data_metadata.dart';

/// auto generated
/// These fields can be used to create a new product that this price will belong to.
class PricesPostRequestBodyProductData
    implements AdditionalDataHolder, Parsable {
  ///  The active property
  bool? active;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The id property
  @Deprecated("")
  String? id;

  ///  The metadata property
  PricesPostRequestBodyProductDataMetadata? metadata;

  ///  The name property
  String? name;

  ///  The statement_descriptor property
  String? statementDescriptor;

  ///  The tax_code property
  String? taxCode;

  ///  The unit_label property
  String? unitLabel;

  /// Instantiates a new [PricesPostRequestBodyProductData] and sets the default values.
  PricesPostRequestBodyProductData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PricesPostRequestBodyProductData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PricesPostRequestBodyProductData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            PricesPostRequestBodyProductDataMetadata>(
        PricesPostRequestBodyProductDataMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['tax_code'] = (node) => taxCode = node.getStringValue();
    deserializerMap['unit_label'] = (node) => unitLabel = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<PricesPostRequestBodyProductDataMetadata>(
        'metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue('tax_code', taxCode);
    writer.writeStringValue('unit_label', unitLabel);
    writer.writeAdditionalData(additionalData);
  }
}
