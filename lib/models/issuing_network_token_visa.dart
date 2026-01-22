// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingNetworkTokenVisa implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A unique reference ID from Visa to represent the card account number.
  String? cardReferenceId;

  ///  The network-unique identifier for the token.
  String? tokenReferenceId;

  ///  The ID of the entity requesting tokenization, specific to Visa.
  String? tokenRequestorId;

  ///  Degree of risk associated with the token between `01` and `99`, with higher number indicating higher risk. A `00` value indicates the token was not scored by Visa.
  String? tokenRiskScore;

  /// Instantiates a new [IssuingNetworkTokenVisa] and sets the default values.
  IssuingNetworkTokenVisa() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingNetworkTokenVisa createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingNetworkTokenVisa();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_reference_id'] =
        (node) => cardReferenceId = node.getStringValue();
    deserializerMap['token_reference_id'] =
        (node) => tokenReferenceId = node.getStringValue();
    deserializerMap['token_requestor_id'] =
        (node) => tokenRequestorId = node.getStringValue();
    deserializerMap['token_risk_score'] =
        (node) => tokenRiskScore = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('card_reference_id', cardReferenceId);
    writer.writeStringValue('token_reference_id', tokenReferenceId);
    writer.writeStringValue('token_requestor_id', tokenRequestorId);
    writer.writeStringValue('token_risk_score', tokenRiskScore);
    writer.writeAdditionalData(additionalData);
  }
}
