// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_documents_proof_of_registration_signer.dart';

/// auto generated
class AccountsPostRequestBodyDocumentsProofOfRegistration
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The files property
  Iterable<String>? files;

  ///  The signer property
  AccountsPostRequestBodyDocumentsProofOfRegistrationSigner? signer;

  /// Instantiates a new [AccountsPostRequestBodyDocumentsProofOfRegistration] and sets the default values.
  AccountsPostRequestBodyDocumentsProofOfRegistration() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyDocumentsProofOfRegistration
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountsPostRequestBodyDocumentsProofOfRegistration();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['files'] =
        (node) => files = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['signer'] = (node) => signer = node.getObjectValue<
            AccountsPostRequestBodyDocumentsProofOfRegistrationSigner>(
        AccountsPostRequestBodyDocumentsProofOfRegistrationSigner
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('files', files);
    writer.writeObjectValue<
            AccountsPostRequestBodyDocumentsProofOfRegistrationSigner>(
        'signer', signer);
    writer.writeAdditionalData(additionalData);
  }
}
