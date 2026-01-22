// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './outbound_payments_post_request_body_destination_payment_method_data.dart';
import './outbound_payments_post_request_body_destination_payment_method_options.dart';
import './outbound_payments_post_request_body_end_user_details.dart';
import './outbound_payments_post_request_body_metadata.dart';

/// auto generated
class OutboundPaymentsPostRequestBody implements Parsable {
  ///  Amount (in cents) to be transferred.
  int? amount;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  ID of the customer to whom the OutboundPayment is sent. Must match the Customer attached to the `destination_payment_method` passed in.
  String? customer;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  The PaymentMethod to use as the payment instrument for the OutboundPayment. Exclusive with `destination_payment_method_data`.
  String? destinationPaymentMethod;

  ///  Hash used to generate the PaymentMethod to be used for this OutboundPayment. Exclusive with `destination_payment_method`.
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodData?
      destinationPaymentMethodData;

  ///  Payment method-specific configuration for this OutboundPayment.
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptions?
      destinationPaymentMethodOptions;

  ///  End user details.
  OutboundPaymentsPostRequestBodyEndUserDetails? endUserDetails;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The FinancialAccount to pull funds from.
  String? financialAccount;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  OutboundPaymentsPostRequestBodyMetadata? metadata;

  ///  The description that appears on the receiving end for this OutboundPayment (for example, bank statement for external bank transfer). Maximum 10 characters for `ach` payments, 140 characters for `us_domestic_wire` payments, or 500 characters for `stripe` network transfers. Can only include -#.$&*, spaces, and alphanumeric characters. The default value is "payment".
  String? statementDescriptor;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundPaymentsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return OutboundPaymentsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['destination_payment_method'] =
        (node) => destinationPaymentMethod = node.getStringValue();
    deserializerMap['destination_payment_method_data'] = (node) =>
        destinationPaymentMethodData = node.getObjectValue<
                OutboundPaymentsPostRequestBodyDestinationPaymentMethodData>(
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodData
                .createFromDiscriminatorValue);
    deserializerMap['destination_payment_method_options'] = (node) =>
        destinationPaymentMethodOptions = node.getObjectValue<
                OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptions>(
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['end_user_details'] = (node) => endUserDetails =
        node.getObjectValue<OutboundPaymentsPostRequestBodyEndUserDetails>(
            OutboundPaymentsPostRequestBodyEndUserDetails
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            OutboundPaymentsPostRequestBodyMetadata>(
        OutboundPaymentsPostRequestBodyMetadata.createFromDiscriminatorValue);
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
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('description', description);
    writer.writeStringValue(
        'destination_payment_method', destinationPaymentMethod);
    writer.writeObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodData>(
        'destination_payment_method_data', destinationPaymentMethodData);
    writer.writeObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptions>(
        'destination_payment_method_options', destinationPaymentMethodOptions);
    writer.writeObjectValue<OutboundPaymentsPostRequestBodyEndUserDetails>(
        'end_user_details', endUserDetails);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeObjectValue<OutboundPaymentsPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
  }
}
