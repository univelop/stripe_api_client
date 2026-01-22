// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../balance_transaction.dart';
import '../issuing_dispute_evidence.dart';
import '../issuing_dispute_treasury.dart';
import './dispute_loss_reason.dart';
import './dispute_metadata.dart';
import './dispute_object.dart';
import './dispute_status.dart';
import './dispute_transaction.dart';

/// auto generated
/// As a [card issuer](https://docs.stripe.com/issuing), you can dispute transactions that the cardholder does not recognize, suspects to be fraudulent, or has other issues with.Related guide: [Issuing disputes](https://docs.stripe.com/issuing/purchases/disputes)
class Dispute implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Disputed amount in the card's currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). Usually the amount of the `transaction`, but can differ (usually because of currency fluctuation).
  int? amount;

  ///  List of balance transactions associated with the dispute.
  Iterable<BalanceTransaction>? balanceTransactions;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The currency the `transaction` was made in.
  String? currency;

  ///  The evidence property
  IssuingDisputeEvidence? evidence;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The enum that describes the dispute loss outcome. If the dispute is not lost, this field will be absent. New enum values may be added in the future, so be sure to handle unknown values.
  DisputeLossReason? lossReason;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  DisputeMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  DisputeObject? object;

  ///  Current status of the dispute.
  DisputeStatus? status;

  ///  The transaction being disputed.
  DisputeTransaction? transaction;

  ///  [Treasury](https://docs.stripe.com/api/treasury) details related to this dispute if it was created on a [FinancialAccount](/docs/api/treasury/financial_accounts
  IssuingDisputeTreasury? treasury;

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
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['evidence'] = (node) => evidence =
        node.getObjectValue<IssuingDisputeEvidence>(
            IssuingDisputeEvidence.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['loss_reason'] = (node) => lossReason =
        node.getEnumValue<DisputeLossReason>((stringValue) => DisputeLossReason
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<DisputeMetadata>(
            DisputeMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<DisputeObject>((stringValue) => DisputeObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<DisputeStatus>((stringValue) => DisputeStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['transaction'] = (node) => transaction =
        node.getObjectValue<DisputeTransaction>(
            DisputeTransaction.createFromDiscriminatorValue);
    deserializerMap['treasury'] = (node) => treasury =
        node.getObjectValue<IssuingDisputeTreasury>(
            IssuingDisputeTreasury.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeCollectionOfObjectValues<BalanceTransaction>(
        'balance_transactions', balanceTransactions);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<IssuingDisputeEvidence>('evidence', evidence);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<DisputeLossReason>(
        'loss_reason', lossReason, (e) => e?.value);
    writer.writeObjectValue<DisputeMetadata>('metadata', metadata);
    writer.writeEnumValue<DisputeObject>('object', object, (e) => e?.value);
    writer.writeEnumValue<DisputeStatus>('status', status, (e) => e?.value);
    writer.writeObjectValue<DisputeTransaction>('transaction', transaction);
    writer.writeObjectValue<IssuingDisputeTreasury>('treasury', treasury);
    writer.writeAdditionalData(additionalData);
  }
}
