// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_transaction.dart';
import './dispute_charge.dart';
import './dispute_enhanced_eligibility_types.dart';
import './dispute_evidence.dart';
import './dispute_evidence_details.dart';
import './dispute_metadata.dart';
import './dispute_object.dart';
import './dispute_payment_intent.dart';
import './dispute_payment_method_details.dart';
import './dispute_status.dart';

/// auto generated
/// A dispute occurs when a customer questions your charge with their card issuer.When this happens, you have the opportunity to respond to the dispute withevidence that shows that the charge is legitimate.Related guide: [Disputes and fraud](https://docs.stripe.com/disputes)
class Dispute implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Disputed amount. Usually the amount of the charge, but it can differ (usually because of currency fluctuation or because only part of the order is disputed).
  int? amount;

  ///  List of zero, one, or two balance transactions that show funds withdrawn and reinstated to your Stripe account as a result of this dispute.
  Iterable<BalanceTransaction>? balanceTransactions;

  ///  ID of the charge that's disputed.
  DisputeCharge? charge;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  List of eligibility types that are included in `enhanced_evidence`.
  Iterable<DisputeEnhancedEligibilityTypes>? enhancedEligibilityTypes;

  ///  The evidence property
  DisputeEvidence? evidence;

  ///  The evidence_details property
  DisputeEvidenceDetails? evidenceDetails;

  ///  Unique identifier for the object.
  String? id;

  ///  If true, it's still possible to refund the disputed payment. After the payment has been fully refunded, no further funds are withdrawn from your Stripe account as a result of this dispute.
  bool? isChargeRefundable;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  DisputeMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  DisputeObject? object;

  ///  ID of the PaymentIntent that's disputed.
  DisputePaymentIntent? paymentIntent;

  ///  The payment_method_details property
  DisputePaymentMethodDetails? paymentMethodDetails;

  ///  Reason given by cardholder for dispute. Possible values are `bank_cannot_process`, `check_returned`, `credit_not_processed`, `customer_initiated`, `debit_not_authorized`, `duplicate`, `fraudulent`, `general`, `incorrect_account_details`, `insufficient_funds`, `noncompliant`, `product_not_received`, `product_unacceptable`, `subscription_canceled`, or `unrecognized`. Learn more about [dispute reasons](https://docs.stripe.com/disputes/categories).
  String? reason;

  ///  The current status of a dispute. Possible values include:`warning_needs_response`, `warning_under_review`, `warning_closed`, `needs_response`, `under_review`, `won`, `lost`, or `prevented`.
  DisputeStatus? status;

  /// Instantiates a new [Dispute] and sets the default values.
  Dispute() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Dispute createFromDiscriminatorValue(ParseNode parseNode) {
    return Dispute();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['balance_transactions'] = (node) => balanceTransactions =
        node.getCollectionOfObjectValues<BalanceTransaction>(
            BalanceTransaction.createFromDiscriminatorValue);
    deserializerMap['charge'] = (node) => charge =
        node.getObjectValue<DisputeCharge>(
            DisputeCharge.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['enhanced_eligibility_types'] = (node) =>
        enhancedEligibilityTypes =
            node.getCollectionOfEnumValues<DisputeEnhancedEligibilityTypes>(
                (stringValue) => DisputeEnhancedEligibilityTypes.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['evidence'] = (node) => evidence =
        node.getObjectValue<DisputeEvidence>(
            DisputeEvidence.createFromDiscriminatorValue);
    deserializerMap['evidence_details'] = (node) => evidenceDetails =
        node.getObjectValue<DisputeEvidenceDetails>(
            DisputeEvidenceDetails.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['is_charge_refundable'] =
        (node) => isChargeRefundable = node.getBoolValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<DisputeMetadata>(
            DisputeMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<DisputeObject>((stringValue) => DisputeObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['payment_intent'] = (node) => paymentIntent =
        node.getObjectValue<DisputePaymentIntent>(
            DisputePaymentIntent.createFromDiscriminatorValue);
    deserializerMap['payment_method_details'] = (node) => paymentMethodDetails =
        node.getObjectValue<DisputePaymentMethodDetails>(
            DisputePaymentMethodDetails.createFromDiscriminatorValue);
    deserializerMap['reason'] = (node) => reason = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<DisputeStatus>((stringValue) => DisputeStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeCollectionOfObjectValues<BalanceTransaction>(
        'balance_transactions', balanceTransactions);
    writer.writeObjectValue<DisputeCharge>('charge', charge);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeCollectionOfEnumValues<DisputeEnhancedEligibilityTypes>(
        'enhanced_eligibility_types',
        enhancedEligibilityTypes,
        (e) => e?.value);
    writer.writeObjectValue<DisputeEvidence>('evidence', evidence);
    writer.writeObjectValue<DisputeEvidenceDetails>(
        'evidence_details', evidenceDetails);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('is_charge_refundable', value: isChargeRefundable);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<DisputeMetadata>('metadata', metadata);
    writer.writeEnumValue<DisputeObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<DisputePaymentIntent>(
        'payment_intent', paymentIntent);
    writer.writeObjectValue<DisputePaymentMethodDetails>(
        'payment_method_details', paymentMethodDetails);
    writer.writeStringValue('reason', reason);
    writer.writeEnumValue<DisputeStatus>('status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
