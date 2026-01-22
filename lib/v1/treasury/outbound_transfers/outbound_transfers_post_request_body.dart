// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './outbound_transfers_post_request_body_destination_payment_method_data.dart';
import './outbound_transfers_post_request_body_destination_payment_method_options.dart';
import './outbound_transfers_post_request_body_metadata.dart';

/// auto generated
class OutboundTransfersPostRequestBody implements Parsable {
  ///  Amount (in cents) to be transferred.
  int? amount;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  The PaymentMethod to use as the payment instrument for the OutboundTransfer.
  String? destinationPaymentMethod;

  ///  Hash used to generate the PaymentMethod to be used for this OutboundTransfer. Exclusive with `destination_payment_method`.
  OutboundTransfersPostRequestBodyDestinationPaymentMethodData?
      destinationPaymentMethodData;

  ///  Hash describing payment method configuration details.
  OutboundTransfersPostRequestBodyDestinationPaymentMethodOptions?
      destinationPaymentMethodOptions;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The FinancialAccount to pull funds from.
  String? financialAccount;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  OutboundTransfersPostRequestBodyMetadata? metadata;

  ///  Statement descriptor to be shown on the receiving end of an OutboundTransfer. Maximum 10 characters for `ach` transfers or 140 characters for `us_domestic_wire` transfers. The default value is "transfer". Can only include -#.$&*, spaces, and alphanumeric characters.
  String? statementDescriptor;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundTransfersPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return OutboundTransfersPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['destination_payment_method'] =
        (node) => destinationPaymentMethod = node.getStringValue();
    deserializerMap['destination_payment_method_data'] = (node) =>
        destinationPaymentMethodData = node.getObjectValue<
                OutboundTransfersPostRequestBodyDestinationPaymentMethodData>(
            OutboundTransfersPostRequestBodyDestinationPaymentMethodData
                .createFromDiscriminatorValue);
    deserializerMap['destination_payment_method_options'] = (node) =>
        destinationPaymentMethodOptions = node.getObjectValue<
                OutboundTransfersPostRequestBodyDestinationPaymentMethodOptions>(
            OutboundTransfersPostRequestBodyDestinationPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            OutboundTransfersPostRequestBodyMetadata>(
        OutboundTransfersPostRequestBodyMetadata.createFromDiscriminatorValue);
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
    writer.writeStringValue(
        'destination_payment_method', destinationPaymentMethod);
    writer.writeObjectValue<
            OutboundTransfersPostRequestBodyDestinationPaymentMethodData>(
        'destination_payment_method_data', destinationPaymentMethodData);
    writer.writeObjectValue<
            OutboundTransfersPostRequestBodyDestinationPaymentMethodOptions>(
        'destination_payment_method_options', destinationPaymentMethodOptions);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeObjectValue<OutboundTransfersPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
  }
}
