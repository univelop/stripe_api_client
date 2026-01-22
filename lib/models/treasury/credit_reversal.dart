// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../treasury_received_credits_resource_status_transitions.dart';
import './credit_reversal_metadata.dart';
import './credit_reversal_network.dart';
import './credit_reversal_object.dart';
import './credit_reversal_status.dart';
import './credit_reversal_transaction.dart';

/// auto generated
/// You can reverse some [ReceivedCredits](https://api.stripe.com#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
class CreditReversal implements AdditionalDataHolder, Parsable {
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

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  CreditReversalMetadata? metadata;

  ///  The rails used to reverse the funds.
  CreditReversalNetwork? network;

  ///  String representing the object's type. Objects of the same type share the same value.
  CreditReversalObject? object;

  ///  The ReceivedCredit being reversed.
  String? receivedCredit;

  ///  Status of the CreditReversal
  CreditReversalStatus? status;

  ///  The status_transitions property
  TreasuryReceivedCreditsResourceStatusTransitions? statusTransitions;

  ///  The Transaction associated with this object.
  CreditReversalTransaction? transaction;

  /// Instantiates a new [CreditReversal] and sets the default values.
  CreditReversal() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditReversal createFromDiscriminatorValue(ParseNode parseNode) {
    return CreditReversal();
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
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CreditReversalMetadata>(
            CreditReversalMetadata.createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network =
        node.getEnumValue<CreditReversalNetwork>((stringValue) =>
            CreditReversalNetwork.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CreditReversalObject>((stringValue) =>
            CreditReversalObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['received_credit'] =
        (node) => receivedCredit = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<CreditReversalStatus>((stringValue) =>
            CreditReversalStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status_transitions'] = (node) => statusTransitions =
        node.getObjectValue<TreasuryReceivedCreditsResourceStatusTransitions>(
            TreasuryReceivedCreditsResourceStatusTransitions
                .createFromDiscriminatorValue);
    deserializerMap['transaction'] = (node) => transaction =
        node.getObjectValue<CreditReversalTransaction>(
            CreditReversalTransaction.createFromDiscriminatorValue);
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
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<CreditReversalMetadata>('metadata', metadata);
    writer.writeEnumValue<CreditReversalNetwork>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<CreditReversalObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('received_credit', receivedCredit);
    writer.writeEnumValue<CreditReversalStatus>(
        'status', status, (e) => e?.value);
    writer.writeObjectValue<TreasuryReceivedCreditsResourceStatusTransitions>(
        'status_transitions', statusTransitions);
    writer.writeObjectValue<CreditReversalTransaction>(
        'transaction', transaction);
    writer.writeAdditionalData(additionalData);
  }
}
