// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../treasury_received_debits_resource_linked_flows.dart';
import '../treasury_received_debits_resource_reversal_details.dart';
import '../treasury_shared_resource_initiating_payment_method_details_initiating_payment_method_details.dart';
import './received_debit_failure_code.dart';
import './received_debit_network.dart';
import './received_debit_object.dart';
import './received_debit_status.dart';
import './received_debit_transaction.dart';

/// auto generated
/// ReceivedDebits represent funds pulled from a [FinancialAccount](https://api.stripe.com#financial_accounts). These are not initiated from the FinancialAccount.
class ReceivedDebit implements AdditionalDataHolder, Parsable {
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

  ///  Reason for the failure. A ReceivedDebit might fail because the FinancialAccount doesn't have sufficient funds, is closed, or is frozen.
  ReceivedDebitFailureCode? failureCode;

  ///  The FinancialAccount that funds were pulled from.
  String? financialAccount;

  ///  A [hosted transaction receipt](https://docs.stripe.com/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
  String? hostedRegulatoryReceiptUrl;

  ///  Unique identifier for the object.
  String? id;

  ///  The initiating_payment_method_details property
  TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails?
      initiatingPaymentMethodDetails;

  ///  The linked_flows property
  TreasuryReceivedDebitsResourceLinkedFlows? linkedFlows;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The network used for the ReceivedDebit.
  ReceivedDebitNetwork? network;

  ///  String representing the object's type. Objects of the same type share the same value.
  ReceivedDebitObject? object;

  ///  Details describing when a ReceivedDebit might be reversed.
  TreasuryReceivedDebitsResourceReversalDetails? reversalDetails;

  ///  Status of the ReceivedDebit. ReceivedDebits are created with a status of either `succeeded` (approved) or `failed` (declined). The failure reason can be found under the `failure_code`.
  ReceivedDebitStatus? status;

  ///  The Transaction associated with this object.
  ReceivedDebitTransaction? transaction;

  /// Instantiates a new [ReceivedDebit] and sets the default values.
  ReceivedDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReceivedDebit createFromDiscriminatorValue(ParseNode parseNode) {
    return ReceivedDebit();
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
        node.getEnumValue<ReceivedDebitFailureCode>((stringValue) =>
            ReceivedDebitFailureCode.values
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
        node.getObjectValue<TreasuryReceivedDebitsResourceLinkedFlows>(
            TreasuryReceivedDebitsResourceLinkedFlows
                .createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['network'] = (node) => network =
        node.getEnumValue<ReceivedDebitNetwork>((stringValue) =>
            ReceivedDebitNetwork.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ReceivedDebitObject>((stringValue) =>
            ReceivedDebitObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reversal_details'] = (node) => reversalDetails =
        node.getObjectValue<TreasuryReceivedDebitsResourceReversalDetails>(
            TreasuryReceivedDebitsResourceReversalDetails
                .createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<ReceivedDebitStatus>((stringValue) =>
            ReceivedDebitStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['transaction'] = (node) => transaction =
        node.getObjectValue<ReceivedDebitTransaction>(
            ReceivedDebitTransaction.createFromDiscriminatorValue);
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
    writer.writeEnumValue<ReceivedDebitFailureCode>(
        'failure_code', failureCode, (e) => e?.value);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeStringValue(
        'hosted_regulatory_receipt_url', hostedRegulatoryReceiptUrl);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<
            TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails>(
        'initiating_payment_method_details', initiatingPaymentMethodDetails);
    writer.writeObjectValue<TreasuryReceivedDebitsResourceLinkedFlows>(
        'linked_flows', linkedFlows);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<ReceivedDebitNetwork>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<ReceivedDebitObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<TreasuryReceivedDebitsResourceReversalDetails>(
        'reversal_details', reversalDetails);
    writer.writeEnumValue<ReceivedDebitStatus>(
        'status', status, (e) => e?.value);
    writer.writeObjectValue<ReceivedDebitTransaction>(
        'transaction', transaction);
    writer.writeAdditionalData(additionalData);
  }
}
