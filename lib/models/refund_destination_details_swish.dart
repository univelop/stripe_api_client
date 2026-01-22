// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class RefundDestinationDetailsSwish implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  For refunds declined by the network, a decline code provided by the network which indicates the reason the refund failed.
  String? networkDeclineCode;

  ///  The reference assigned to the refund.
  String? reference;

  ///  Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
  String? referenceStatus;

  /// Instantiates a new [RefundDestinationDetailsSwish] and sets the default values.
  RefundDestinationDetailsSwish() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RefundDestinationDetailsSwish createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RefundDestinationDetailsSwish();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['network_decline_code'] =
        (node) => networkDeclineCode = node.getStringValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['reference_status'] =
        (node) => referenceStatus = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('network_decline_code', networkDeclineCode);
    writer.writeStringValue('reference', reference);
    writer.writeStringValue('reference_status', referenceStatus);
    writer.writeAdditionalData(additionalData);
  }
}
