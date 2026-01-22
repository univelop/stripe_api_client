// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_reversal_post_request_body_line_items_metadata.dart';

/// auto generated
class CreateReversalPostRequestBodyLineItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The amount_tax property
  int? amountTax;

  ///  The metadata property
  CreateReversalPostRequestBodyLineItemsMetadata? metadata;

  ///  The original_line_item property
  String? originalLineItem;

  ///  The quantity property
  int? quantity;

  ///  The reference property
  String? reference;

  /// Instantiates a new [CreateReversalPostRequestBodyLineItems] and sets the default values.
  CreateReversalPostRequestBodyLineItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateReversalPostRequestBodyLineItems createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreateReversalPostRequestBodyLineItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_tax'] = (node) => amountTax = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CreateReversalPostRequestBodyLineItemsMetadata>(
            CreateReversalPostRequestBodyLineItemsMetadata
                .createFromDiscriminatorValue);
    deserializerMap['original_line_item'] =
        (node) => originalLineItem = node.getStringValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeIntValue('amount_tax', amountTax);
    writer.writeObjectValue<CreateReversalPostRequestBodyLineItemsMetadata>(
        'metadata', metadata);
    writer.writeStringValue('original_line_item', originalLineItem);
    writer.writeIntValue('quantity', quantity);
    writer.writeStringValue('reference', reference);
    writer.writeAdditionalData(additionalData);
  }
}
