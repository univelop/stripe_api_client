// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../treasury_transactions_resource_abstract_transaction_resource_status_transitions.dart';
import '../treasury_transactions_resource_balance_impact.dart';
import '../treasury_transactions_resource_flow_details.dart';
import './transaction_entries.dart';
import './transaction_flow_type.dart';
import './transaction_object.dart';
import './transaction_status.dart';

/// auto generated
/// Transactions represent changes to a [FinancialAccount's](https://api.stripe.com#financial_accounts) balance.
class Transaction implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount (in cents) transferred.
  int? amount;

  ///  Change to a FinancialAccount's balance
  TreasuryTransactionsResourceBalanceImpact? balanceImpact;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  A list of TransactionEntries that are part of this Transaction. This cannot be expanded in any list endpoints.
  TransactionEntries? entries;

  ///  The FinancialAccount associated with this object.
  String? financialAccount;

  ///  ID of the flow that created the Transaction.
  String? flow;

  ///  Details of the flow that created the Transaction.
  TreasuryTransactionsResourceFlowDetails? flowDetails;

  ///  Type of the flow that created the Transaction.
  TransactionFlowType? flowType;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  TransactionObject? object;

  ///  Status of the Transaction.
  TransactionStatus? status;

  ///  The status_transitions property
  TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions?
      statusTransitions;

  /// Instantiates a new [Transaction] and sets the default values.
  Transaction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Transaction createFromDiscriminatorValue(ParseNode parseNode) {
    return Transaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['balance_impact'] = (node) => balanceImpact =
        node.getObjectValue<TreasuryTransactionsResourceBalanceImpact>(
            TreasuryTransactionsResourceBalanceImpact
                .createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['entries'] = (node) => entries =
        node.getObjectValue<TransactionEntries>(
            TransactionEntries.createFromDiscriminatorValue);
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['flow'] = (node) => flow = node.getStringValue();
    deserializerMap['flow_details'] = (node) => flowDetails =
        node.getObjectValue<TreasuryTransactionsResourceFlowDetails>(
            TreasuryTransactionsResourceFlowDetails
                .createFromDiscriminatorValue);
    deserializerMap['flow_type'] = (node) => flowType =
        node.getEnumValue<TransactionFlowType>((stringValue) =>
            TransactionFlowType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TransactionObject>((stringValue) => TransactionObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<TransactionStatus>((stringValue) => TransactionStatus
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap[
        'status_transitions'] = (node) => statusTransitions = node.getObjectValue<
            TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions>(
        TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<TreasuryTransactionsResourceBalanceImpact>(
        'balance_impact', balanceImpact);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeObjectValue<TransactionEntries>('entries', entries);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeStringValue('flow', flow);
    writer.writeObjectValue<TreasuryTransactionsResourceFlowDetails>(
        'flow_details', flowDetails);
    writer.writeEnumValue<TransactionFlowType>(
        'flow_type', flowType, (e) => e?.value);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<TransactionObject>('object', object, (e) => e?.value);
    writer.writeEnumValue<TransactionStatus>('status', status, (e) => e?.value);
    writer.writeObjectValue<
            TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions>(
        'status_transitions', statusTransitions);
    writer.writeAdditionalData(additionalData);
  }
}
