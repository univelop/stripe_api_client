// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_reversal_post_request_body_line_items.dart';
import './create_reversal_post_request_body_metadata.dart';
import './create_reversal_post_request_body_mode.dart';
import './create_reversal_post_request_body_shipping_cost.dart';

/// auto generated
class CreateReversalPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A flat amount to reverse across the entire transaction, in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) in negative. This value represents the total amount to refund from the transaction, including taxes.
  int? flatAmount;

  ///  The line item amounts to reverse.
  Iterable<CreateReversalPostRequestBodyLineItems>? lineItems;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  CreateReversalPostRequestBodyMetadata? metadata;

  ///  If `partial`, the provided line item or shipping cost amounts are reversed. If `full`, the original transaction is fully reversed.
  CreateReversalPostRequestBodyMode? mode;

  ///  The ID of the Transaction to partially or fully reverse.
  String? originalTransaction;

  ///  A custom identifier for this reversal, such as `myOrder_123-refund_1`, which must be unique across all transactions. The reference helps identify this reversal transaction in exported [tax reports](https://docs.stripe.com/tax/reports).
  String? reference;

  ///  The shipping cost to reverse.
  CreateReversalPostRequestBodyShippingCost? shippingCost;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateReversalPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreateReversalPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['flat_amount'] = (node) => flatAmount = node.getIntValue();
    deserializerMap['line_items'] = (node) => lineItems = node
        .getCollectionOfObjectValues<CreateReversalPostRequestBodyLineItems>(
            CreateReversalPostRequestBodyLineItems
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CreateReversalPostRequestBodyMetadata>(
            CreateReversalPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['mode'] = (node) => mode =
        node.getEnumValue<CreateReversalPostRequestBodyMode>((stringValue) =>
            CreateReversalPostRequestBodyMode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['original_transaction'] =
        (node) => originalTransaction = node.getStringValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['shipping_cost'] = (node) => shippingCost =
        node.getObjectValue<CreateReversalPostRequestBodyShippingCost>(
            CreateReversalPostRequestBodyShippingCost
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('flat_amount', flatAmount);
    writer
        .writeCollectionOfObjectValues<CreateReversalPostRequestBodyLineItems>(
            'line_items', lineItems);
    writer.writeObjectValue<CreateReversalPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeEnumValue<CreateReversalPostRequestBodyMode>(
        'mode', mode, (e) => e?.value);
    writer.writeStringValue('original_transaction', originalTransaction);
    writer.writeStringValue('reference', reference);
    writer.writeObjectValue<CreateReversalPostRequestBodyShippingCost>(
        'shipping_cost', shippingCost);
  }
}
