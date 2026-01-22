// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Details about the authorization, such as identifiers, set by the card network.
class AuthorizationsPostRequestBodyNetworkData
    implements AdditionalDataHolder, Parsable {
  ///  The acquiring_institution_id property
  String? acquiringInstitutionId;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [AuthorizationsPostRequestBodyNetworkData] and sets the default values.
  AuthorizationsPostRequestBodyNetworkData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AuthorizationsPostRequestBodyNetworkData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AuthorizationsPostRequestBodyNetworkData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acquiring_institution_id'] =
        (node) => acquiringInstitutionId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('acquiring_institution_id', acquiringInstitutionId);
    writer.writeAdditionalData(additionalData);
  }
}
