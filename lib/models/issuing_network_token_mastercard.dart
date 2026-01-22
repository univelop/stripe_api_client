// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingNetworkTokenMastercard implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A unique reference ID from MasterCard to represent the card account number.
  String? cardReferenceId;

  ///  The network-unique identifier for the token.
  String? tokenReferenceId;

  ///  The ID of the entity requesting tokenization, specific to MasterCard.
  String? tokenRequestorId;

  ///  The name of the entity requesting tokenization, if known. This is directly provided from MasterCard.
  String? tokenRequestorName;

  /// Instantiates a new [IssuingNetworkTokenMastercard] and sets the default values.
  IssuingNetworkTokenMastercard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingNetworkTokenMastercard createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingNetworkTokenMastercard();
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
    deserializerMap['token_requestor_name'] =
        (node) => tokenRequestorName = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('card_reference_id', cardReferenceId);
    writer.writeStringValue('token_reference_id', tokenReferenceId);
    writer.writeStringValue('token_requestor_id', tokenRequestorId);
    writer.writeStringValue('token_requestor_name', tokenRequestorName);
    writer.writeAdditionalData(additionalData);
  }
}
