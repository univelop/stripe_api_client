// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../treasury_received_debits_resource_debit_reversal_linked_flows.dart';
import '../treasury_received_debits_resource_status_transitions.dart';
import './debit_reversal_metadata.dart';
import './debit_reversal_network.dart';
import './debit_reversal_object.dart';
import './debit_reversal_status.dart';
import './debit_reversal_transaction.dart';

/// auto generated
/// You can reverse some [ReceivedDebits](https://api.stripe.com#received_debits) depending on their network and source flow. Reversing a ReceivedDebit leads to the creation of a new object known as a DebitReversal.
class DebitReversal implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount (in cents) transferred.
  int? amount;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The FinancialAccount to reverse funds from.
  String? financialAccount;

  ///  A [hosted transaction receipt](https://docs.stripe.com/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
  String? hostedRegulatoryReceiptUrl;

  ///  Unique identifier for the object.
  String? id;

  ///  Other flows linked to a DebitReversal.
  TreasuryReceivedDebitsResourceDebitReversalLinkedFlows? linkedFlows;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  DebitReversalMetadata? metadata;

  ///  The rails used to reverse the funds.
  DebitReversalNetwork? network;

  ///  String representing the object's type. Objects of the same type share the same value.
  DebitReversalObject? object;

  ///  The ReceivedDebit being reversed.
  String? receivedDebit;

  ///  Status of the DebitReversal
  DebitReversalStatus? status;

  ///  The status_transitions property
  TreasuryReceivedDebitsResourceStatusTransitions? statusTransitions;

  ///  The Transaction associated with this object.
  DebitReversalTransaction? transaction;

  /// Instantiates a new [DebitReversal] and sets the default values.
  DebitReversal() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DebitReversal createFromDiscriminatorValue(ParseNode parseNode) {
    return DebitReversal();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['hosted_regulatory_receipt_url'] =
        (node) => hostedRegulatoryReceiptUrl = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['linked_flows'] = (node) => linkedFlows = node
        .getObjectValue<TreasuryReceivedDebitsResourceDebitReversalLinkedFlows>(
            TreasuryReceivedDebitsResourceDebitReversalLinkedFlows
                .createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<DebitReversalMetadata>(
            DebitReversalMetadata.createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network =
        node.getEnumValue<DebitReversalNetwork>((stringValue) =>
            DebitReversalNetwork.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<DebitReversalObject>((stringValue) =>
            DebitReversalObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['received_debit'] =
        (node) => receivedDebit = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<DebitReversalStatus>((stringValue) =>
            DebitReversalStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status_transitions'] = (node) => statusTransitions =
        node.getObjectValue<TreasuryReceivedDebitsResourceStatusTransitions>(
            TreasuryReceivedDebitsResourceStatusTransitions
                .createFromDiscriminatorValue);
    deserializerMap['transaction'] = (node) => transaction =
        node.getObjectValue<DebitReversalTransaction>(
            DebitReversalTransaction.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeStringValue(
        'hosted_regulatory_receipt_url', hostedRegulatoryReceiptUrl);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<
            TreasuryReceivedDebitsResourceDebitReversalLinkedFlows>(
        'linked_flows', linkedFlows);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<DebitReversalMetadata>('metadata', metadata);
    writer.writeEnumValue<DebitReversalNetwork>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<DebitReversalObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('received_debit', receivedDebit);
    writer.writeEnumValue<DebitReversalStatus>(
        'status', status, (e) => e?.value);
    writer.writeObjectValue<TreasuryReceivedDebitsResourceStatusTransitions>(
        'status_transitions', statusTransitions);
    writer.writeObjectValue<DebitReversalTransaction>(
        'transaction', transaction);
    writer.writeAdditionalData(additionalData);
  }
}
