// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../bank_connections_resource_transaction_resource_status_transitions.dart';
import './transaction_object.dart';
import './transaction_status.dart';

/// auto generated
/// A Transaction represents a real transaction that affects a Financial Connections Account balance.
class Transaction implements AdditionalDataHolder, Parsable {
  ///  The ID of the Financial Connections Account this transaction belongs to.
  String? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount of this transaction, in cents (or local equivalent).
  int? amount;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The description of this transaction.
  String? description;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  TransactionObject? object;

  ///  The status of the transaction.
  TransactionStatus? status;

  ///  The status_transitions property
  BankConnectionsResourceTransactionResourceStatusTransitions?
      statusTransitions;

  ///  Time at which the transaction was transacted. Measured in seconds since the Unix epoch.
  int? transactedAt;

  ///  The token of the transaction refresh that last updated or created this transaction.
  String? transactionRefresh;

  ///  Time at which the object was last updated. Measured in seconds since the Unix epoch.
  int? updated;

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
    deserializerMap['account'] = (node) => account = node.getStringValue();
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
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
    deserializerMap['status_transitions'] = (node) => statusTransitions =
        node.getObjectValue<
                BankConnectionsResourceTransactionResourceStatusTransitions>(
            BankConnectionsResourceTransactionResourceStatusTransitions
                .createFromDiscriminatorValue);
    deserializerMap['transacted_at'] =
        (node) => transactedAt = node.getIntValue();
    deserializerMap['transaction_refresh'] =
        (node) => transactionRefresh = node.getStringValue();
    deserializerMap['updated'] = (node) => updated = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account', account);
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<TransactionObject>('object', object, (e) => e?.value);
    writer.writeEnumValue<TransactionStatus>('status', status, (e) => e?.value);
    writer.writeObjectValue<
            BankConnectionsResourceTransactionResourceStatusTransitions>(
        'status_transitions', statusTransitions);
    writer.writeIntValue('transacted_at', transactedAt);
    writer.writeStringValue('transaction_refresh', transactionRefresh);
    writer.writeIntValue('updated', updated);
    writer.writeAdditionalData(additionalData);
  }
}
