// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Change to a FinancialAccount's balance
class TreasuryTransactionsResourceBalanceImpact
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The change made to funds the user can spend right now.
  int? cash;

  ///  The change made to funds that are not spendable yet, but will become available at a later time.
  int? inboundPending;

  ///  The change made to funds in the account, but not spendable because they are being held for pending outbound flows.
  int? outboundPending;

  /// Instantiates a new [TreasuryTransactionsResourceBalanceImpact] and sets the default values.
  TreasuryTransactionsResourceBalanceImpact() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryTransactionsResourceBalanceImpact createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TreasuryTransactionsResourceBalanceImpact();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cash'] = (node) => cash = node.getIntValue();
    deserializerMap['inbound_pending'] =
        (node) => inboundPending = node.getIntValue();
    deserializerMap['outbound_pending'] =
        (node) => outboundPending = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('cash', cash);
    writer.writeIntValue('inbound_pending', inboundPending);
    writer.writeIntValue('outbound_pending', outboundPending);
    writer.writeAdditionalData(additionalData);
  }
}
