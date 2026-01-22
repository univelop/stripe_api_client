// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../treasury_received_credits_resource_linked_flows.dart';
import '../treasury_received_credits_resource_reversal_details.dart';
import '../treasury_shared_resource_initiating_payment_method_details_initiating_payment_method_details.dart';
import './received_credit_failure_code.dart';
import './received_credit_network.dart';
import './received_credit_object.dart';
import './received_credit_status.dart';
import './received_credit_transaction.dart';

/// auto generated
/// ReceivedCredits represent funds sent to a [FinancialAccount](https://api.stripe.com#financial_accounts) (for example, via ACH or wire). These money movements are not initiated from the FinancialAccount.
class ReceivedCredit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount (in cents) transferred.
  int? amount;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Reason for the failure. A ReceivedCredit might fail because the receiving FinancialAccount is closed or frozen.
  ReceivedCreditFailureCode? failureCode;

  ///  The FinancialAccount that received the funds.
  String? financialAccount;

  ///  A [hosted transaction receipt](https://docs.stripe.com/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
  String? hostedRegulatoryReceiptUrl;

  ///  Unique identifier for the object.
  String? id;

  ///  The initiating_payment_method_details property
  TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails?
      initiatingPaymentMethodDetails;

  ///  The linked_flows property
  TreasuryReceivedCreditsResourceLinkedFlows? linkedFlows;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The rails used to send the funds.
  ReceivedCreditNetwork? network;

  ///  String representing the object's type. Objects of the same type share the same value.
  ReceivedCreditObject? object;

  ///  Details describing when a ReceivedCredit may be reversed.
  TreasuryReceivedCreditsResourceReversalDetails? reversalDetails;

  ///  Status of the ReceivedCredit. ReceivedCredits are created either `succeeded` (approved) or `failed` (declined). If a ReceivedCredit is declined, the failure reason can be found in the `failure_code` field.
  ReceivedCreditStatus? status;

  ///  The Transaction associated with this object.
  ReceivedCreditTransaction? transaction;

  /// Instantiates a new [ReceivedCredit] and sets the default values.
  ReceivedCredit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReceivedCredit createFromDiscriminatorValue(ParseNode parseNode) {
    return ReceivedCredit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['failure_code'] = (node) => failureCode =
        node.getEnumValue<ReceivedCreditFailureCode>((stringValue) =>
            ReceivedCreditFailureCode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['hosted_regulatory_receipt_url'] =
        (node) => hostedRegulatoryReceiptUrl = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['initiating_payment_method_details'] = (node) =>
        initiatingPaymentMethodDetails = node.getObjectValue<
                TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails>(
            TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails
                .createFromDiscriminatorValue);
    deserializerMap['linked_flows'] = (node) => linkedFlows =
        node.getObjectValue<TreasuryReceivedCreditsResourceLinkedFlows>(
            TreasuryReceivedCreditsResourceLinkedFlows
                .createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['network'] = (node) => network =
        node.getEnumValue<ReceivedCreditNetwork>((stringValue) =>
            ReceivedCreditNetwork.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ReceivedCreditObject>((stringValue) =>
            ReceivedCreditObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reversal_details'] = (node) => reversalDetails =
        node.getObjectValue<TreasuryReceivedCreditsResourceReversalDetails>(
            TreasuryReceivedCreditsResourceReversalDetails
                .createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<ReceivedCreditStatus>((stringValue) =>
            ReceivedCreditStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['transaction'] = (node) => transaction =
        node.getObjectValue<ReceivedCreditTransaction>(
            ReceivedCreditTransaction.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeEnumValue<ReceivedCreditFailureCode>(
        'failure_code', failureCode, (e) => e?.value);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeStringValue(
        'hosted_regulatory_receipt_url', hostedRegulatoryReceiptUrl);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<
            TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails>(
        'initiating_payment_method_details', initiatingPaymentMethodDetails);
    writer.writeObjectValue<TreasuryReceivedCreditsResourceLinkedFlows>(
        'linked_flows', linkedFlows);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<ReceivedCreditNetwork>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<ReceivedCreditObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<TreasuryReceivedCreditsResourceReversalDetails>(
        'reversal_details', reversalDetails);
    writer.writeEnumValue<ReceivedCreditStatus>(
        'status', status, (e) => e?.value);
    writer.writeObjectValue<ReceivedCreditTransaction>(
        'transaction', transaction);
    writer.writeAdditionalData(additionalData);
  }
}
