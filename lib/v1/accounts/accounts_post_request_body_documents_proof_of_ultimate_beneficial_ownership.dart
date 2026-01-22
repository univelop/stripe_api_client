// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_documents_proof_of_ultimate_beneficial_ownership_signer.dart';

/// auto generated
class AccountsPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The files property
  Iterable<String>? files;

  ///  The signer property
  AccountsPostRequestBodyDocumentsProofOfUltimateBeneficialOwnershipSigner?
      signer;

  /// Instantiates a new [AccountsPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership] and sets the default values.
  AccountsPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountsPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['files'] =
        (node) => files = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['signer'] = (node) => signer = node.getObjectValue<
            AccountsPostRequestBodyDocumentsProofOfUltimateBeneficialOwnershipSigner>(
        AccountsPostRequestBodyDocumentsProofOfUltimateBeneficialOwnershipSigner
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('files', files);
    writer.writeObjectValue<
            AccountsPostRequestBodyDocumentsProofOfUltimateBeneficialOwnershipSigner>(
        'signer', signer);
    writer.writeAdditionalData(additionalData);
  }
}
