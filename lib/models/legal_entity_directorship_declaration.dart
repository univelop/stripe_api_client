// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class LegalEntityDirectorshipDeclaration
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The Unix timestamp marking when the directorship declaration attestation was made.
  int? date;

  ///  The IP address from which the directorship declaration attestation was made.
  String? ip;

  ///  The user-agent string from the browser where the directorship declaration attestation was made.
  String? userAgent;

  /// Instantiates a new [LegalEntityDirectorshipDeclaration] and sets the default values.
  LegalEntityDirectorshipDeclaration() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LegalEntityDirectorshipDeclaration createFromDiscriminatorValue(
      ParseNode parseNode) {
    return LegalEntityDirectorshipDeclaration();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['date'] = (node) => date = node.getIntValue();
    deserializerMap['ip'] = (node) => ip = node.getStringValue();
    deserializerMap['user_agent'] = (node) => userAgent = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('date', date);
    writer.writeStringValue('ip', ip);
    writer.writeStringValue('user_agent', userAgent);
    writer.writeAdditionalData(additionalData);
  }
}
