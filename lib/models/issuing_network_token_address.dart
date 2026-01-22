// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingNetworkTokenAddress implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The street address of the cardholder tokenizing the card.
  String? line1;

  ///  The postal code of the cardholder tokenizing the card.
  String? postalCode;

  /// Instantiates a new [IssuingNetworkTokenAddress] and sets the default values.
  IssuingNetworkTokenAddress() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingNetworkTokenAddress createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingNetworkTokenAddress();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['line1'] = (node) => line1 = node.getStringValue();
    deserializerMap['postal_code'] =
        (node) => postalCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('line1', line1);
    writer.writeStringValue('postal_code', postalCode);
    writer.writeAdditionalData(additionalData);
  }
}
