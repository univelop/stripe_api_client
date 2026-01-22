// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_source_post_request_body_source_order_items.dart';
import './with_source_post_request_body_source_order_shipping.dart';

/// auto generated
/// Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
class WithSourcePostRequestBodySourceOrder
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The items property
  Iterable<WithSourcePostRequestBodySourceOrderItems>? items;

  ///  The shipping property
  WithSourcePostRequestBodySourceOrderShipping? shipping;

  /// Instantiates a new [WithSourcePostRequestBodySourceOrder] and sets the default values.
  WithSourcePostRequestBodySourceOrder() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSourcePostRequestBodySourceOrder createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithSourcePostRequestBodySourceOrder();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['items'] = (node) => items = node
        .getCollectionOfObjectValues<WithSourcePostRequestBodySourceOrderItems>(
            WithSourcePostRequestBodySourceOrderItems
                .createFromDiscriminatorValue);
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<WithSourcePostRequestBodySourceOrderShipping>(
            WithSourcePostRequestBodySourceOrderShipping
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
        WithSourcePostRequestBodySourceOrderItems>('items', items);
    writer.writeObjectValue<WithSourcePostRequestBodySourceOrderShipping>(
        'shipping', shipping);
    writer.writeAdditionalData(additionalData);
  }
}
