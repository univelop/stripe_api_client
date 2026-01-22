// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../treasury_transactions_resource_balance_impact.dart';
import '../treasury_transactions_resource_flow_details.dart';
import './transaction_entry_flow_type.dart';
import './transaction_entry_object.dart';
import './transaction_entry_transaction.dart';
import './transaction_entry_type.dart';

/// auto generated
/// TransactionEntries represent individual units of money movements within a single [Transaction](https://api.stripe.com#transactions).
class TransactionEntry implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Change to a FinancialAccount's balance
  TreasuryTransactionsResourceBalanceImpact? balanceImpact;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  When the TransactionEntry will impact the FinancialAccount's balance.
  int? effectiveAt;

  ///  The FinancialAccount associated with this object.
  String? financialAccount;

  ///  Token of the flow associated with the TransactionEntry.
  String? flow;

  ///  Details of the flow associated with the TransactionEntry.
  TreasuryTransactionsResourceFlowDetails? flowDetails;

  ///  Type of the flow associated with the TransactionEntry.
  TransactionEntryFlowType? flowType;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  TransactionEntryObject? object;

  ///  The Transaction associated with this object.
  TransactionEntryTransaction? transaction;

  ///  The specific money movement that generated the TransactionEntry.
  TransactionEntryType? type_;

  /// Instantiates a new [TransactionEntry] and sets the default values.
  TransactionEntry() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TransactionEntry createFromDiscriminatorValue(ParseNode parseNode) {
    return TransactionEntry();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['balance_impact'] = (node) => balanceImpact =
        node.getObjectValue<TreasuryTransactionsResourceBalanceImpact>(
            TreasuryTransactionsResourceBalanceImpact
                .createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['effective_at'] =
        (node) => effectiveAt = node.getIntValue();
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['flow'] = (node) => flow = node.getStringValue();
    deserializerMap['flow_details'] = (node) => flowDetails =
        node.getObjectValue<TreasuryTransactionsResourceFlowDetails>(
            TreasuryTransactionsResourceFlowDetails
                .createFromDiscriminatorValue);
    deserializerMap['flow_type'] = (node) => flowType =
        node.getEnumValue<TransactionEntryFlowType>((stringValue) =>
            TransactionEntryFlowType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TransactionEntryObject>((stringValue) =>
            TransactionEntryObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['transaction'] = (node) => transaction =
        node.getObjectValue<TransactionEntryTransaction>(
            TransactionEntryTransaction.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<TransactionEntryType>((stringValue) =>
            TransactionEntryType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TreasuryTransactionsResourceBalanceImpact>(
        'balance_impact', balanceImpact);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeIntValue('effective_at', effectiveAt);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeStringValue('flow', flow);
    writer.writeObjectValue<TreasuryTransactionsResourceFlowDetails>(
        'flow_details', flowDetails);
    writer.writeEnumValue<TransactionEntryFlowType>(
        'flow_type', flowType, (e) => e?.value);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<TransactionEntryObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<TransactionEntryTransaction>(
        'transaction', transaction);
    writer.writeEnumValue<TransactionEntryType>('type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
