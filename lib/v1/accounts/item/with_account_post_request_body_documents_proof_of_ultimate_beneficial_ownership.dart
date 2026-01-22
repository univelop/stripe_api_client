// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_documents_proof_of_ultimate_beneficial_ownership_signer.dart';

/// auto generated
class WithAccountPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The files property
  Iterable<String>? files;

  ///  The signer property
  WithAccountPostRequestBodyDocumentsProofOfUltimateBeneficialOwnershipSigner?
      signer;

  /// Instantiates a new [WithAccountPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership] and sets the default values.
  WithAccountPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithAccountPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['files'] =
        (node) => files = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['signer'] = (node) => signer = node.getObjectValue<
            WithAccountPostRequestBodyDocumentsProofOfUltimateBeneficialOwnershipSigner>(
        WithAccountPostRequestBodyDocumentsProofOfUltimateBeneficialOwnershipSigner
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('files', files);
    writer.writeObjectValue<
            WithAccountPostRequestBodyDocumentsProofOfUltimateBeneficialOwnershipSigner>(
        'signer', signer);
    writer.writeAdditionalData(additionalData);
  }
}
