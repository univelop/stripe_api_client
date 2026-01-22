// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_details.dart';
import './charge_application.dart';
import './charge_application_fee.dart';
import './charge_balance_transaction.dart';
import './charge_customer.dart';
import './charge_failure_balance_transaction.dart';
import './charge_fraud_details.dart';
import './charge_metadata.dart';
import './charge_object.dart';
import './charge_on_behalf_of.dart';
import './charge_outcome.dart';
import './charge_payment_intent.dart';
import './charge_refunds.dart';
import './charge_review.dart';
import './charge_source_transfer.dart';
import './charge_status.dart';
import './charge_transfer.dart';
import './charge_transfer_data.dart';
import './payment_flows_payment_intent_presentment_details.dart';
import './payment_method_details.dart';
import './radar_radar_options.dart';
import './shipping.dart';

/// auto generated
/// The `Charge` object represents a single attempt to move money into your Stripe account.PaymentIntent confirmation is the most common way to create Charges, but [Account Debits](https://docs.stripe.com/connect/account-debits) may also create Charges.Some legacy payment flows create Charges directly, which is not recommended for new integrations.
class Charge implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
  int? amount;

  ///  Amount in cents (or local equivalent) captured (can be less than the amount attribute on the charge if a partial capture was made).
  int? amountCaptured;

  ///  Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the charge if a partial refund was issued).
  int? amountRefunded;

  ///  ID of the Connect application that created the charge.
  ChargeApplication? application;

  ///  The application fee (if any) for the charge. [See the Connect documentation](https://docs.stripe.com/connect/direct-charges#collect-fees) for details.
  ChargeApplicationFee? applicationFee;

  ///  The amount of the application fee (if any) requested for the charge. [See the Connect documentation](https://docs.stripe.com/connect/direct-charges#collect-fees) for details.
  int? applicationFeeAmount;

  ///  ID of the balance transaction that describes the impact of this charge on your account balance (not including refunds or disputes).
  ChargeBalanceTransaction? balanceTransaction;

  ///  The billing_details property
  BillingDetails? billingDetails;

  ///  The full statement descriptor that is passed to card networks, and that is displayed on your customers' credit card and bank statements. Allows you to see what the statement descriptor looks like after the static and dynamic portions are combined. This value only exists for card payments.
  String? calculatedStatementDescriptor;

  ///  If the charge was created without capturing, this Boolean represents whether it is still uncaptured or has since been captured.
  bool? captured;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  ID of the customer this charge is for if one exists.
  ChargeCustomer? customer;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Whether the charge has been disputed.
  bool? disputed;

  ///  ID of the balance transaction that describes the reversal of the balance on your account due to payment failure.
  ChargeFailureBalanceTransaction? failureBalanceTransaction;

  ///  Error code explaining reason for charge failure if available (see [the errors section](https://docs.stripe.com/error-codes) for a list of codes).
  String? failureCode;

  ///  Message to user further explaining reason for charge failure if available.
  String? failureMessage;

  ///  Information on fraud assessments for the charge.
  ChargeFraudDetails? fraudDetails;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  ChargeMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  ChargeObject? object;

  ///  The account (if any) the charge was made on behalf of without triggering an automatic transfer. See the [Connect documentation](https://docs.stripe.com/connect/separate-charges-and-transfers) for details.
  ChargeOnBehalfOf? onBehalfOf;

  ///  Details about whether the payment was accepted, and why. See [understanding declines](https://docs.stripe.com/declines) for details.
  ChargeOutcome? outcome;

  ///  `true` if the charge succeeded, or was successfully authorized for later capture.
  bool? paid;

  ///  ID of the PaymentIntent associated with this charge, if one exists.
  ChargePaymentIntent? paymentIntent;

  ///  ID of the payment method used in this charge.
  String? paymentMethod;

  ///  Details about the payment method at the time of the transaction.
  PaymentMethodDetails? paymentMethodDetails;

  ///  The presentment_details property
  PaymentFlowsPaymentIntentPresentmentDetails? presentmentDetails;

  ///  Options to configure Radar. See [Radar Session](https://docs.stripe.com/radar/radar-session) for more information.
  RadarRadarOptions? radarOptions;

  ///  This is the email address that the receipt for this charge was sent to.
  String? receiptEmail;

  ///  This is the transaction number that appears on email receipts sent for this charge. This attribute will be `null` until a receipt has been sent.
  String? receiptNumber;

  ///  This is the URL to view the receipt for this charge. The receipt is kept up-to-date to the latest state of the charge, including any refunds. If the charge is for an Invoice, the receipt will be stylized as an Invoice receipt.
  String? receiptUrl;

  ///  Whether the charge has been fully refunded. If the charge is only partially refunded, this attribute will still be false.
  bool? refunded;

  ///  A list of refunds that have been applied to the charge.
  ChargeRefunds? refunds;

  ///  ID of the review associated with this charge if one exists.
  ChargeReview? review;

  ///  Shipping information for the charge.
  Shipping? shipping;

  ///  The transfer ID which created this charge. Only present if the charge came from another Stripe account. [See the Connect documentation](https://docs.stripe.com/connect/destination-charges) for details.
  ChargeSourceTransfer? sourceTransfer;

  ///  For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
  String? statementDescriptor;

  ///  Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
  String? statementDescriptorSuffix;

  ///  The status of the payment is either `succeeded`, `pending`, or `failed`.
  ChargeStatus? status;

  ///  ID of the transfer to the `destination` account (only applicable if the charge was created using the `destination` parameter).
  ChargeTransfer? transfer;

  ///  An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://docs.stripe.com/connect/destination-charges) for details.
  ChargeTransferData? transferData;

  ///  A string that identifies this transaction as part of a group. See the [Connect documentation](https://docs.stripe.com/connect/separate-charges-and-transfers#transfer-options) for details.
  String? transferGroup;

  /// Instantiates a new [Charge] and sets the default values.
  Charge() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Charge createFromDiscriminatorValue(ParseNode parseNode) {
    return Charge();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_captured'] =
        (node) => amountCaptured = node.getIntValue();
    deserializerMap['amount_refunded'] =
        (node) => amountRefunded = node.getIntValue();
    deserializerMap['application'] = (node) => application =
        node.getObjectValue<ChargeApplication>(
            ChargeApplication.createFromDiscriminatorValue);
    deserializerMap['application_fee'] = (node) => applicationFee =
        node.getObjectValue<ChargeApplicationFee>(
            ChargeApplicationFee.createFromDiscriminatorValue);
    deserializerMap['application_fee_amount'] =
        (node) => applicationFeeAmount = node.getIntValue();
    deserializerMap['balance_transaction'] = (node) => balanceTransaction =
        node.getObjectValue<ChargeBalanceTransaction>(
            ChargeBalanceTransaction.createFromDiscriminatorValue);
    deserializerMap['billing_details'] = (node) => billingDetails =
        node.getObjectValue<BillingDetails>(
            BillingDetails.createFromDiscriminatorValue);
    deserializerMap['calculated_statement_descriptor'] =
        (node) => calculatedStatementDescriptor = node.getStringValue();
    deserializerMap['captured'] = (node) => captured = node.getBoolValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<ChargeCustomer>(
            ChargeCustomer.createFromDiscriminatorValue);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['disputed'] = (node) => disputed = node.getBoolValue();
    deserializerMap['failure_balance_transaction'] = (node) =>
        failureBalanceTransaction =
            node.getObjectValue<ChargeFailureBalanceTransaction>(
                ChargeFailureBalanceTransaction.createFromDiscriminatorValue);
    deserializerMap['failure_code'] =
        (node) => failureCode = node.getStringValue();
    deserializerMap['failure_message'] =
        (node) => failureMessage = node.getStringValue();
    deserializerMap['fraud_details'] = (node) => fraudDetails =
        node.getObjectValue<ChargeFraudDetails>(
            ChargeFraudDetails.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<ChargeMetadata>(
            ChargeMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ChargeObject>((stringValue) => ChargeObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf =
        node.getObjectValue<ChargeOnBehalfOf>(
            ChargeOnBehalfOf.createFromDiscriminatorValue);
    deserializerMap['outcome'] = (node) => outcome =
        node.getObjectValue<ChargeOutcome>(
            ChargeOutcome.createFromDiscriminatorValue);
    deserializerMap['paid'] = (node) => paid = node.getBoolValue();
    deserializerMap['payment_intent'] = (node) => paymentIntent =
        node.getObjectValue<ChargePaymentIntent>(
            ChargePaymentIntent.createFromDiscriminatorValue);
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['payment_method_details'] = (node) => paymentMethodDetails =
        node.getObjectValue<PaymentMethodDetails>(
            PaymentMethodDetails.createFromDiscriminatorValue);
    deserializerMap['presentment_details'] = (node) => presentmentDetails =
        node.getObjectValue<PaymentFlowsPaymentIntentPresentmentDetails>(
            PaymentFlowsPaymentIntentPresentmentDetails
                .createFromDiscriminatorValue);
    deserializerMap['radar_options'] = (node) => radarOptions =
        node.getObjectValue<RadarRadarOptions>(
            RadarRadarOptions.createFromDiscriminatorValue);
    deserializerMap['receipt_email'] =
        (node) => receiptEmail = node.getStringValue();
    deserializerMap['receipt_number'] =
        (node) => receiptNumber = node.getStringValue();
    deserializerMap['receipt_url'] =
        (node) => receiptUrl = node.getStringValue();
    deserializerMap['refunded'] = (node) => refunded = node.getBoolValue();
    deserializerMap['refunds'] = (node) => refunds =
        node.getObjectValue<ChargeRefunds>(
            ChargeRefunds.createFromDiscriminatorValue);
    deserializerMap['review'] = (node) => review =
        node.getObjectValue<ChargeReview>(
            ChargeReview.createFromDiscriminatorValue);
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<Shipping>(Shipping.createFromDiscriminatorValue);
    deserializerMap['source_transfer'] = (node) => sourceTransfer =
        node.getObjectValue<ChargeSourceTransfer>(
            ChargeSourceTransfer.createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['statement_descriptor_suffix'] =
        (node) => statementDescriptorSuffix = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<ChargeStatus>((stringValue) => ChargeStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['transfer'] = (node) => transfer =
        node.getObjectValue<ChargeTransfer>(
            ChargeTransfer.createFromDiscriminatorValue);
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<ChargeTransferData>(
            ChargeTransferData.createFromDiscriminatorValue);
    deserializerMap['transfer_group'] =
        (node) => transferGroup = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeIntValue('amount_captured', amountCaptured);
    writer.writeIntValue('amount_refunded', amountRefunded);
    writer.writeObjectValue<ChargeApplication>('application', application);
    writer.writeObjectValue<ChargeApplicationFee>(
        'application_fee', applicationFee);
    writer.writeIntValue('application_fee_amount', applicationFeeAmount);
    writer.writeObjectValue<ChargeBalanceTransaction>(
        'balance_transaction', balanceTransaction);
    writer.writeObjectValue<BillingDetails>('billing_details', billingDetails);
    writer.writeStringValue(
        'calculated_statement_descriptor', calculatedStatementDescriptor);
    writer.writeBoolValue('captured', value: captured);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<ChargeCustomer>('customer', customer);
    writer.writeStringValue('description', description);
    writer.writeBoolValue('disputed', value: disputed);
    writer.writeObjectValue<ChargeFailureBalanceTransaction>(
        'failure_balance_transaction', failureBalanceTransaction);
    writer.writeStringValue('failure_code', failureCode);
    writer.writeStringValue('failure_message', failureMessage);
    writer.writeObjectValue<ChargeFraudDetails>('fraud_details', fraudDetails);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<ChargeMetadata>('metadata', metadata);
    writer.writeEnumValue<ChargeObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<ChargeOnBehalfOf>('on_behalf_of', onBehalfOf);
    writer.writeObjectValue<ChargeOutcome>('outcome', outcome);
    writer.writeBoolValue('paid', value: paid);
    writer.writeObjectValue<ChargePaymentIntent>(
        'payment_intent', paymentIntent);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeObjectValue<PaymentMethodDetails>(
        'payment_method_details', paymentMethodDetails);
    writer.writeObjectValue<PaymentFlowsPaymentIntentPresentmentDetails>(
        'presentment_details', presentmentDetails);
    writer.writeObjectValue<RadarRadarOptions>('radar_options', radarOptions);
    writer.writeStringValue('receipt_email', receiptEmail);
    writer.writeStringValue('receipt_number', receiptNumber);
    writer.writeStringValue('receipt_url', receiptUrl);
    writer.writeBoolValue('refunded', value: refunded);
    writer.writeObjectValue<ChargeRefunds>('refunds', refunds);
    writer.writeObjectValue<ChargeReview>('review', review);
    writer.writeObjectValue<Shipping>('shipping', shipping);
    writer.writeObjectValue<ChargeSourceTransfer>(
        'source_transfer', sourceTransfer);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue(
        'statement_descriptor_suffix', statementDescriptorSuffix);
    writer.writeEnumValue<ChargeStatus>('status', status, (e) => e?.value);
    writer.writeObjectValue<ChargeTransfer>('transfer', transfer);
    writer.writeObjectValue<ChargeTransferData>('transfer_data', transferData);
    writer.writeStringValue('transfer_group', transferGroup);
    writer.writeAdditionalData(additionalData);
  }
}
