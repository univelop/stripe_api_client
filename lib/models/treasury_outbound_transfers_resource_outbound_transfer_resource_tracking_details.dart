// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_outbound_transfers_resource_ach_tracking_details.dart';
import './treasury_outbound_transfers_resource_outbound_transfer_resource_tracking_details_type.dart';
import './treasury_outbound_transfers_resource_us_domestic_wire_tracking_details.dart';

/// auto generated
class TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetails
    implements AdditionalDataHolder, Parsable {
  ///  The ach property
  TreasuryOutboundTransfersResourceAchTrackingDetails? ach;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The US bank account network used to send funds.
  TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetailsType?
      type_;

  ///  The us_domestic_wire property
  TreasuryOutboundTransfersResourceUsDomesticWireTrackingDetails?
      usDomesticWire;

  /// Instantiates a new [TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetails] and sets the default values.
  TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach'] = (node) => ach = node
        .getObjectValue<TreasuryOutboundTransfersResourceAchTrackingDetails>(
            TreasuryOutboundTransfersResourceAchTrackingDetails
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetailsType>(
        (stringValue) =>
            TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetailsType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['us_domestic_wire'] = (node) => usDomesticWire =
        node.getObjectValue<
                TreasuryOutboundTransfersResourceUsDomesticWireTrackingDetails>(
            TreasuryOutboundTransfersResourceUsDomesticWireTrackingDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<TreasuryOutboundTransfersResourceAchTrackingDetails>(
            'ach', ach);
    writer.writeEnumValue<
            TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            TreasuryOutboundTransfersResourceUsDomesticWireTrackingDetails>(
        'us_domestic_wire', usDomesticWire);
    writer.writeAdditionalData(additionalData);
  }
}
