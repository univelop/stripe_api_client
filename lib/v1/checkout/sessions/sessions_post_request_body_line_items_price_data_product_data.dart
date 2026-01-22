// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_line_items_price_data_product_data_metadata.dart';

/// auto generated
class SessionsPostRequestBodyLineItemsPriceDataProductData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The description property
  String? description;

  ///  The images property
  Iterable<String>? images;

  ///  The metadata property
  SessionsPostRequestBodyLineItemsPriceDataProductDataMetadata? metadata;

  ///  The name property
  String? name;

  ///  The tax_code property
  String? taxCode;

  ///  The unit_label property
  String? unitLabel;

  /// Instantiates a new [SessionsPostRequestBodyLineItemsPriceDataProductData] and sets the default values.
  SessionsPostRequestBodyLineItemsPriceDataProductData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyLineItemsPriceDataProductData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyLineItemsPriceDataProductData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['images'] =
        (node) => images = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            SessionsPostRequestBodyLineItemsPriceDataProductDataMetadata>(
        SessionsPostRequestBodyLineItemsPriceDataProductDataMetadata
            .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['tax_code'] = (node) => taxCode = node.getStringValue();
    deserializerMap['unit_label'] = (node) => unitLabel = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('description', description);
    writer.writeCollectionOfPrimitiveValues<String?>('images', images);
    writer.writeObjectValue<
            SessionsPostRequestBodyLineItemsPriceDataProductDataMetadata>(
        'metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeStringValue('tax_code', taxCode);
    writer.writeStringValue('unit_label', unitLabel);
    writer.writeAdditionalData(additionalData);
  }
}
