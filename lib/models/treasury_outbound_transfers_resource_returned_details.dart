// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_outbound_transfers_resource_returned_details_code.dart';
import './treasury_outbound_transfers_resource_returned_details_transaction.dart';

/// auto generated
class TreasuryOutboundTransfersResourceReturnedDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Reason for the return.
  TreasuryOutboundTransfersResourceReturnedDetailsCode? code;

  ///  The Transaction associated with this object.
  TreasuryOutboundTransfersResourceReturnedDetailsTransaction? transaction;

  /// Instantiates a new [TreasuryOutboundTransfersResourceReturnedDetails] and sets the default values.
  TreasuryOutboundTransfersResourceReturnedDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryOutboundTransfersResourceReturnedDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryOutboundTransfersResourceReturnedDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['code'] = (node) => code =
        node.getEnumValue<TreasuryOutboundTransfersResourceReturnedDetailsCode>(
            (stringValue) =>
                TreasuryOutboundTransfersResourceReturnedDetailsCode.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['transaction'] = (node) => transaction =
        node.getObjectValue<
                TreasuryOutboundTransfersResourceReturnedDetailsTransaction>(
            TreasuryOutboundTransfersResourceReturnedDetailsTransaction
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<TreasuryOutboundTransfersResourceReturnedDetailsCode>(
        'code', code, (e) => e?.value);
    writer.writeObjectValue<
            TreasuryOutboundTransfersResourceReturnedDetailsTransaction>(
        'transaction', transaction);
    writer.writeAdditionalData(additionalData);
  }
}
