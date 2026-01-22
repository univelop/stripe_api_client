// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './transfers_post_request_body_metadata.dart';
import './transfers_post_request_body_source_type.dart';

/// auto generated
class TransfersPostRequestBody implements Parsable {
  ///  A positive integer in cents (or local equivalent) representing how much to transfer.
  int? amount;

  ///  Three-letter [ISO code for currency](https://www.iso.org/iso-4217-currency-codes.html) in lowercase. Must be a [supported currency](https://docs.stripe.com/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  The ID of a connected Stripe account. <a href="/docs/connect/separate-charges-and-transfers">See the Connect documentation</a> for details.
  String? destination;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  TransfersPostRequestBodyMetadata? metadata;

  ///  You can use this parameter to transfer funds from a charge before they are added to your available balance. A pending balance will transfer immediately but the funds will not become available until the original charge becomes available. [See the Connect documentation](https://docs.stripe.com/connect/separate-charges-and-transfers#transfer-availability) for details.
  String? sourceTransaction;

  ///  The source balance to use for this transfer. One of `bank_account`, `card`, or `fpx`. For most users, this will default to `card`.
  TransfersPostRequestBodySourceType? sourceType;

  ///  A string that identifies this transaction as part of a group. See the [Connect documentation](https://docs.stripe.com/connect/separate-charges-and-transfers#transfer-options) for details.
  String? transferGroup;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TransfersPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TransfersPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['destination'] =
        (node) => destination = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<TransfersPostRequestBodyMetadata>(
            TransfersPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['source_transaction'] =
        (node) => sourceTransaction = node.getStringValue();
    deserializerMap['source_type'] = (node) => sourceType =
        node.getEnumValue<TransfersPostRequestBodySourceType>((stringValue) =>
            TransfersPostRequestBodySourceType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['transfer_group'] =
        (node) => transferGroup = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeStringValue('destination', destination);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<TransfersPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('source_transaction', sourceTransaction);
    writer.writeEnumValue<TransfersPostRequestBodySourceType>(
        'source_type', sourceType, (e) => e?.value);
    writer.writeStringValue('transfer_group', transferGroup);
  }
}
