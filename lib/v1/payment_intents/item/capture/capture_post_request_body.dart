// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './capture_post_request_body_amount_details.dart';
import './capture_post_request_body_hooks.dart';
import './capture_post_request_body_payment_details.dart';
import './capture_post_request_body_transfer_data.dart';

/// auto generated
class CapturePostRequestBody implements Parsable {
  ///  Provides industry-specific information about the amount.
  CapturePostRequestBodyAmountDetails? amountDetails;

  ///  The amount to capture from the PaymentIntent, which must be less than or equal to the original amount. Defaults to the full `amount_capturable` if it's not provided.
  int? amountToCapture;

  ///  The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
  int? applicationFeeAmount;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Defaults to `true`. When capturing a PaymentIntent, setting `final_capture` to `false` notifies Stripe to not release the remaining uncaptured funds to make sure that they're captured in future requests. You can only use this setting when [multicapture](https://docs.stripe.com/payments/multicapture) is available for PaymentIntents.
  bool? finalCapture;

  ///  Automations to be run during the PaymentIntent lifecycle
  CapturePostRequestBodyHooks? hooks;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  Provides industry-specific information about the charge.
  CapturePostRequestBodyPaymentDetails? paymentDetails;

  ///  Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
  String? statementDescriptor;

  ///  Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
  String? statementDescriptorSuffix;

  ///  The parameters that you can use to automatically create a transfer after the paymentis captured. Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
  CapturePostRequestBodyTransferData? transferData;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CapturePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_details'] = (node) => amountDetails =
        node.getObjectValue<CapturePostRequestBodyAmountDetails>(
            CapturePostRequestBodyAmountDetails.createFromDiscriminatorValue);
    deserializerMap['amount_to_capture'] =
        (node) => amountToCapture = node.getIntValue();
    deserializerMap['application_fee_amount'] =
        (node) => applicationFeeAmount = node.getIntValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['final_capture'] =
        (node) => finalCapture = node.getBoolValue();
    deserializerMap['hooks'] = (node) => hooks =
        node.getObjectValue<CapturePostRequestBodyHooks>(
            CapturePostRequestBodyHooks.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['payment_details'] = (node) => paymentDetails =
        node.getObjectValue<CapturePostRequestBodyPaymentDetails>(
            CapturePostRequestBodyPaymentDetails.createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['statement_descriptor_suffix'] =
        (node) => statementDescriptorSuffix = node.getStringValue();
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<CapturePostRequestBodyTransferData>(
            CapturePostRequestBodyTransferData.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CapturePostRequestBodyAmountDetails>(
        'amount_details', amountDetails);
    writer.writeIntValue('amount_to_capture', amountToCapture);
    writer.writeIntValue('application_fee_amount', applicationFeeAmount);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeBoolValue('final_capture', value: finalCapture);
    writer.writeObjectValue<CapturePostRequestBodyHooks>('hooks', hooks);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<CapturePostRequestBodyPaymentDetails>(
        'payment_details', paymentDetails);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue(
        'statement_descriptor_suffix', statementDescriptorSuffix);
    writer.writeObjectValue<CapturePostRequestBodyTransferData>(
        'transfer_data', transferData);
  }
}
