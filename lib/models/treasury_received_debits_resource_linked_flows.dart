// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TreasuryReceivedDebitsResourceLinkedFlows
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The DebitReversal created as a result of this ReceivedDebit being reversed.
  String? debitReversal;

  ///  Set if the ReceivedDebit is associated with an InboundTransfer's return of funds.
  String? inboundTransfer;

  ///  Set if the ReceivedDebit was created due to an [Issuing Authorization](https://api.stripe.com#issuing_authorizations) object.
  String? issuingAuthorization;

  ///  Set if the ReceivedDebit is also viewable as an [Issuing Dispute](https://api.stripe.com#issuing_disputes) object.
  String? issuingTransaction;

  ///  Set if the ReceivedDebit was created due to a [Payout](https://api.stripe.com#payouts) object.
  String? payout;

  /// Instantiates a new [TreasuryReceivedDebitsResourceLinkedFlows] and sets the default values.
  TreasuryReceivedDebitsResourceLinkedFlows() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryReceivedDebitsResourceLinkedFlows createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TreasuryReceivedDebitsResourceLinkedFlows();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['debit_reversal'] =
        (node) => debitReversal = node.getStringValue();
    deserializerMap['inbound_transfer'] =
        (node) => inboundTransfer = node.getStringValue();
    deserializerMap['issuing_authorization'] =
        (node) => issuingAuthorization = node.getStringValue();
    deserializerMap['issuing_transaction'] =
        (node) => issuingTransaction = node.getStringValue();
    deserializerMap['payout'] = (node) => payout = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('debit_reversal', debitReversal);
    writer.writeStringValue('inbound_transfer', inboundTransfer);
    writer.writeStringValue('issuing_authorization', issuingAuthorization);
    writer.writeStringValue('issuing_transaction', issuingTransaction);
    writer.writeStringValue('payout', payout);
    writer.writeAdditionalData(additionalData);
  }
}
