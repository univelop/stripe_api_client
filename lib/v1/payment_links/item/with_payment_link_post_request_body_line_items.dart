// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_line_items_adjustable_quantity.dart';

/// auto generated
class WithPaymentLinkPostRequestBodyLineItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The adjustable_quantity property
  WithPaymentLinkPostRequestBodyLineItemsAdjustableQuantity? adjustableQuantity;

  ///  The id property
  String? id;

  ///  The quantity property
  int? quantity;

  /// Instantiates a new [WithPaymentLinkPostRequestBodyLineItems] and sets the default values.
  WithPaymentLinkPostRequestBodyLineItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyLineItems createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodyLineItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['adjustable_quantity'] = (node) => adjustableQuantity =
        node.getObjectValue<
                WithPaymentLinkPostRequestBodyLineItemsAdjustableQuantity>(
            WithPaymentLinkPostRequestBodyLineItemsAdjustableQuantity
                .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyLineItemsAdjustableQuantity>(
        'adjustable_quantity', adjustableQuantity);
    writer.writeStringValue('id', id);
    writer.writeIntValue('quantity', quantity);
    writer.writeAdditionalData(additionalData);
  }
}
