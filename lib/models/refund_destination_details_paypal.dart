// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class RefundDestinationDetailsPaypal implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  For refunds declined by the network, a decline code provided by the network which indicates the reason the refund failed.
  String? networkDeclineCode;

  /// Instantiates a new [RefundDestinationDetailsPaypal] and sets the default values.
  RefundDestinationDetailsPaypal() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RefundDestinationDetailsPaypal createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RefundDestinationDetailsPaypal();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['network_decline_code'] =
        (node) => networkDeclineCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('network_decline_code', networkDeclineCode);
    writer.writeAdditionalData(additionalData);
  }
}
