// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TreasuryOutboundTransfersResourceStatusTransitions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Timestamp describing when an OutboundTransfer changed status to `canceled`
  int? canceledAt;

  ///  Timestamp describing when an OutboundTransfer changed status to `failed`
  int? failedAt;

  ///  Timestamp describing when an OutboundTransfer changed status to `posted`
  int? postedAt;

  ///  Timestamp describing when an OutboundTransfer changed status to `returned`
  int? returnedAt;

  /// Instantiates a new [TreasuryOutboundTransfersResourceStatusTransitions] and sets the default values.
  TreasuryOutboundTransfersResourceStatusTransitions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryOutboundTransfersResourceStatusTransitions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryOutboundTransfersResourceStatusTransitions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['canceled_at'] = (node) => canceledAt = node.getIntValue();
    deserializerMap['failed_at'] = (node) => failedAt = node.getIntValue();
    deserializerMap['posted_at'] = (node) => postedAt = node.getIntValue();
    deserializerMap['returned_at'] = (node) => returnedAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('canceled_at', canceledAt);
    writer.writeIntValue('failed_at', failedAt);
    writer.writeIntValue('posted_at', postedAt);
    writer.writeIntValue('returned_at', returnedAt);
    writer.writeAdditionalData(additionalData);
  }
}
