// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './inbound_transfers_post_request_body_metadata.dart';

/// auto generated
class InboundTransfersPostRequestBody implements Parsable {
  ///  Amount (in cents) to be transferred.
  int? amount;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The FinancialAccount to send funds to.
  String? financialAccount;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  InboundTransfersPostRequestBodyMetadata? metadata;

  ///  The origin payment method to be debited for the InboundTransfer.
  String? originPaymentMethod;

  ///  The complete description that appears on your customers' statements. Maximum 10 characters. Can only include -#.$&*, spaces, and alphanumeric characters.
  String? statementDescriptor;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InboundTransfersPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InboundTransfersPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            InboundTransfersPostRequestBodyMetadata>(
        InboundTransfersPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['origin_payment_method'] =
        (node) => originPaymentMethod = node.getStringValue();
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeObjectValue<InboundTransfersPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('origin_payment_method', originPaymentMethod);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
  }
}
