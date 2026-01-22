// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Details provided about the user being verified. These details may be shown to the user.
class VerificationSessionsPostRequestBodyProvidedDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The email property
  String? email;

  ///  The phone property
  String? phone;

  /// Instantiates a new [VerificationSessionsPostRequestBodyProvidedDetails] and sets the default values.
  VerificationSessionsPostRequestBodyProvidedDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static VerificationSessionsPostRequestBodyProvidedDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return VerificationSessionsPostRequestBodyProvidedDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('email', email);
    writer.writeStringValue('phone', phone);
    writer.writeAdditionalData(additionalData);
  }
}
