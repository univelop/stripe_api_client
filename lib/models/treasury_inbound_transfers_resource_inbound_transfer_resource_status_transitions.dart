// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Timestamp describing when an InboundTransfer changed status to `canceled`.
  int? canceledAt;

  ///  Timestamp describing when an InboundTransfer changed status to `failed`.
  int? failedAt;

  ///  Timestamp describing when an InboundTransfer changed status to `succeeded`.
  int? succeededAt;

  /// Instantiates a new [TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions] and sets the default values.
  TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['canceled_at'] = (node) => canceledAt = node.getIntValue();
    deserializerMap['failed_at'] = (node) => failedAt = node.getIntValue();
    deserializerMap['succeeded_at'] =
        (node) => succeededAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('canceled_at', canceledAt);
    writer.writeIntValue('failed_at', failedAt);
    writer.writeIntValue('succeeded_at', succeededAt);
    writer.writeAdditionalData(additionalData);
  }
}
