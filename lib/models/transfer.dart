// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './transfer_balance_transaction.dart';
import './transfer_destination.dart';
import './transfer_destination_payment.dart';
import './transfer_metadata.dart';
import './transfer_object.dart';
import './transfer_reversals.dart';
import './transfer_source_transaction.dart';

/// auto generated
/// A `Transfer` object is created when you move funds between Stripe accounts aspart of Connect.Before April 6, 2017, transfers also represented movement of funds from aStripe account to a card or bank account. This behavior has since been splitout into a [Payout](https://api.stripe.com#payout_object) object, with corresponding payout endpoints. For moreinformation, read about the[transfer/payout split](https://docs.stripe.com/transfer-payout-split).Related guide: [Creating separate charges and transfers](https://docs.stripe.com/connect/separate-charges-and-transfers)
class Transfer implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount in cents (or local equivalent) to be transferred.
  int? amount;

  ///  Amount in cents (or local equivalent) reversed (can be less than the amount attribute on the transfer if a partial reversal was issued).
  int? amountReversed;

  ///  Balance transaction that describes the impact of this transfer on your account balance.
  TransferBalanceTransaction? balanceTransaction;

  ///  Time that this record of the transfer was first created.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  ID of the Stripe account the transfer was sent to.
  TransferDestination? destination;

  ///  If the destination is a Stripe account, this will be the ID of the payment that the destination account received for the transfer.
  TransferDestinationPayment? destinationPayment;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  TransferMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  TransferObject? object;

  ///  A list of reversals that have been applied to the transfer.
  TransferReversals? reversals;

  ///  Whether the transfer has been fully reversed. If the transfer is only partially reversed, this attribute will still be false.
  bool? reversed;

  ///  ID of the charge that was used to fund the transfer. If null, the transfer was funded from the available balance.
  TransferSourceTransaction? sourceTransaction;

  ///  The source balance this transfer came from. One of `card`, `fpx`, or `bank_account`.
  String? sourceType;

  ///  A string that identifies this transaction as part of a group. See the [Connect documentation](https://docs.stripe.com/connect/separate-charges-and-transfers#transfer-options) for details.
  String? transferGroup;

  /// Instantiates a new [Transfer] and sets the default values.
  Transfer() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Transfer createFromDiscriminatorValue(ParseNode parseNode) {
    return Transfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_reversed'] =
        (node) => amountReversed = node.getIntValue();
    deserializerMap['balance_transaction'] = (node) => balanceTransaction =
        node.getObjectValue<TransferBalanceTransaction>(
            TransferBalanceTransaction.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['destination'] = (node) => destination =
        node.getObjectValue<TransferDestination>(
            TransferDestination.createFromDiscriminatorValue);
    deserializerMap['destination_payment'] = (node) => destinationPayment =
        node.getObjectValue<TransferDestinationPayment>(
            TransferDestinationPayment.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<TransferMetadata>(
            TransferMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TransferObject>((stringValue) => TransferObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['reversals'] = (node) => reversals =
        node.getObjectValue<TransferReversals>(
            TransferReversals.createFromDiscriminatorValue);
    deserializerMap['reversed'] = (node) => reversed = node.getBoolValue();
    deserializerMap['source_transaction'] = (node) => sourceTransaction =
        node.getObjectValue<TransferSourceTransaction>(
            TransferSourceTransaction.createFromDiscriminatorValue);
    deserializerMap['source_type'] =
        (node) => sourceType = node.getStringValue();
    deserializerMap['transfer_group'] =
        (node) => transferGroup = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeIntValue('amount_reversed', amountReversed);
    writer.writeObjectValue<TransferBalanceTransaction>(
        'balance_transaction', balanceTransaction);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeObjectValue<TransferDestination>('destination', destination);
    writer.writeObjectValue<TransferDestinationPayment>(
        'destination_payment', destinationPayment);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<TransferMetadata>('metadata', metadata);
    writer.writeEnumValue<TransferObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<TransferReversals>('reversals', reversals);
    writer.writeBoolValue('reversed', value: reversed);
    writer.writeObjectValue<TransferSourceTransaction>(
        'source_transaction', sourceTransaction);
    writer.writeStringValue('source_type', sourceType);
    writer.writeStringValue('transfer_group', transferGroup);
    writer.writeAdditionalData(additionalData);
  }
}
