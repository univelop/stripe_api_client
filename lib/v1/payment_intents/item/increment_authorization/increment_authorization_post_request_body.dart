// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './increment_authorization_post_request_body_amount_details.dart';
import './increment_authorization_post_request_body_hooks.dart';
import './increment_authorization_post_request_body_metadata.dart';
import './increment_authorization_post_request_body_payment_details.dart';
import './increment_authorization_post_request_body_transfer_data.dart';

/// auto generated
class IncrementAuthorizationPostRequestBody implements Parsable {
  ///  The updated total amount that you intend to collect from the cardholder. This amount must be greater than the currently authorized amount.
  int? amount;

  ///  Provides industry-specific information about the amount.
  IncrementAuthorizationPostRequestBodyAmountDetails? amountDetails;

  ///  The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
  int? applicationFeeAmount;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Automations to be run during the PaymentIntent lifecycle
  IncrementAuthorizationPostRequestBodyHooks? hooks;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  IncrementAuthorizationPostRequestBodyMetadata? metadata;

  ///  Provides industry-specific information about the charge.
  IncrementAuthorizationPostRequestBodyPaymentDetails? paymentDetails;

  ///  Text that appears on the customer's statement as the statement descriptor for a non-card or card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
  String? statementDescriptor;

  ///  The parameters used to automatically create a transfer after the payment is captured.Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
  IncrementAuthorizationPostRequestBodyTransferData? transferData;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IncrementAuthorizationPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IncrementAuthorizationPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_details'] = (node) => amountDetails =
        node.getObjectValue<IncrementAuthorizationPostRequestBodyAmountDetails>(
            IncrementAuthorizationPostRequestBodyAmountDetails
                .createFromDiscriminatorValue);
    deserializerMap['application_fee_amount'] =
        (node) => applicationFeeAmount = node.getIntValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['hooks'] = (node) => hooks =
        node.getObjectValue<IncrementAuthorizationPostRequestBodyHooks>(
            IncrementAuthorizationPostRequestBodyHooks
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<IncrementAuthorizationPostRequestBodyMetadata>(
            IncrementAuthorizationPostRequestBodyMetadata
                .createFromDiscriminatorValue);
    deserializerMap['payment_details'] = (node) => paymentDetails = node
        .getObjectValue<IncrementAuthorizationPostRequestBodyPaymentDetails>(
            IncrementAuthorizationPostRequestBodyPaymentDetails
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<IncrementAuthorizationPostRequestBodyTransferData>(
            IncrementAuthorizationPostRequestBodyTransferData
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<IncrementAuthorizationPostRequestBodyAmountDetails>(
        'amount_details', amountDetails);
    writer.writeIntValue('application_fee_amount', applicationFeeAmount);
    writer.writeStringValue('description', description);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<IncrementAuthorizationPostRequestBodyHooks>(
        'hooks', hooks);
    writer.writeObjectValue<IncrementAuthorizationPostRequestBodyMetadata>(
        'metadata', metadata);
    writer
        .writeObjectValue<IncrementAuthorizationPostRequestBodyPaymentDetails>(
            'payment_details', paymentDetails);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeObjectValue<IncrementAuthorizationPostRequestBodyTransferData>(
        'transfer_data', transferData);
  }
}
