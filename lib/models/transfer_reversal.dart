// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './transfer_reversal_balance_transaction.dart';
import './transfer_reversal_destination_payment_refund.dart';
import './transfer_reversal_metadata.dart';
import './transfer_reversal_object.dart';
import './transfer_reversal_source_refund.dart';
import './transfer_reversal_transfer.dart';

/// auto generated
/// [Stripe Connect](https://docs.stripe.com/connect) platforms can reverse transfers made to aconnected account, either entirely or partially, and can also specify whetherto refund any related application fees. Transfer reversals add to theplatform's balance and subtract from the destination account's balance.Reversing a transfer that was made for a [destinationcharge](/docs/connect/destination-charges) is allowed only up to the amount ofthe charge. It is possible to reverse a[transfer_group](https://docs.stripe.com/connect/separate-charges-and-transfers#transfer-options)transfer only if the destination account has enough balance to cover thereversal.Related guide: [Reverse transfers](https://docs.stripe.com/connect/separate-charges-and-transfers#reverse-transfers)
class TransferReversal implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount, in cents (or local equivalent).
  int? amount;

  ///  Balance transaction that describes the impact on your account balance.
  TransferReversalBalanceTransaction? balanceTransaction;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Linked payment refund for the transfer reversal.
  TransferReversalDestinationPaymentRefund? destinationPaymentRefund;

  ///  Unique identifier for the object.
  String? id;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  TransferReversalMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  TransferReversalObject? object;

  ///  ID of the refund responsible for the transfer reversal.
  TransferReversalSourceRefund? sourceRefund;

  ///  ID of the transfer that was reversed.
  TransferReversalTransfer? transfer;

  /// Instantiates a new [TransferReversal] and sets the default values.
  TransferReversal() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TransferReversal createFromDiscriminatorValue(ParseNode parseNode) {
    return TransferReversal();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['balance_transaction'] = (node) => balanceTransaction =
        node.getObjectValue<TransferReversalBalanceTransaction>(
            TransferReversalBalanceTransaction.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['destination_payment_refund'] = (node) =>
        destinationPaymentRefund =
            node.getObjectValue<TransferReversalDestinationPaymentRefund>(
                TransferReversalDestinationPaymentRefund
                    .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<TransferReversalMetadata>(
            TransferReversalMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TransferReversalObject>((stringValue) =>
            TransferReversalObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['source_refund'] = (node) => sourceRefund =
        node.getObjectValue<TransferReversalSourceRefund>(
            TransferReversalSourceRefund.createFromDiscriminatorValue);
    deserializerMap['transfer'] = (node) => transfer =
        node.getObjectValue<TransferReversalTransfer>(
            TransferReversalTransfer.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<TransferReversalBalanceTransaction>(
        'balance_transaction', balanceTransaction);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<TransferReversalDestinationPaymentRefund>(
        'destination_payment_refund', destinationPaymentRefund);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<TransferReversalMetadata>('metadata', metadata);
    writer.writeEnumValue<TransferReversalObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<TransferReversalSourceRefund>(
        'source_refund', sourceRefund);
    writer.writeObjectValue<TransferReversalTransfer>('transfer', transfer);
    writer.writeAdditionalData(additionalData);
  }
}
