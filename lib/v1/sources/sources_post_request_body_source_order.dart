// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sources_post_request_body_source_order_items.dart';
import './sources_post_request_body_source_order_shipping.dart';

/// auto generated
/// Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
class SourcesPostRequestBodySourceOrder
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The items property
  Iterable<SourcesPostRequestBodySourceOrderItems>? items;

  ///  The shipping property
  SourcesPostRequestBodySourceOrderShipping? shipping;

  /// Instantiates a new [SourcesPostRequestBodySourceOrder] and sets the default values.
  SourcesPostRequestBodySourceOrder() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourcesPostRequestBodySourceOrder createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourcesPostRequestBodySourceOrder();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['items'] = (node) => items = node
        .getCollectionOfObjectValues<SourcesPostRequestBodySourceOrderItems>(
            SourcesPostRequestBodySourceOrderItems
                .createFromDiscriminatorValue);
    deserializerMap['shipping'] = (node) => shipping = node.getObjectValue<
            SourcesPostRequestBodySourceOrderShipping>(
        SourcesPostRequestBodySourceOrderShipping.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeCollectionOfObjectValues<SourcesPostRequestBodySourceOrderItems>(
            'items', items);
    writer.writeObjectValue<SourcesPostRequestBodySourceOrderShipping>(
        'shipping', shipping);
    writer.writeAdditionalData(additionalData);
  }
}
