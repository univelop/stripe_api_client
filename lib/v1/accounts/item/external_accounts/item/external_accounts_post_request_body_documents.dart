// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './external_accounts_post_request_body_documents_bank_account_ownership_verification.dart';

/// auto generated
/// Documents that may be submitted to satisfy various informational requests.
class ExternalAccountsPostRequestBodyDocuments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_account_ownership_verification property
  ExternalAccountsPostRequestBodyDocumentsBankAccountOwnershipVerification?
      bankAccountOwnershipVerification;

  /// Instantiates a new [ExternalAccountsPostRequestBodyDocuments] and sets the default values.
  ExternalAccountsPostRequestBodyDocuments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ExternalAccountsPostRequestBodyDocuments createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ExternalAccountsPostRequestBodyDocuments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_account_ownership_verification'] = (node) =>
        bankAccountOwnershipVerification = node.getObjectValue<
                ExternalAccountsPostRequestBodyDocumentsBankAccountOwnershipVerification>(
            ExternalAccountsPostRequestBodyDocumentsBankAccountOwnershipVerification
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ExternalAccountsPostRequestBodyDocumentsBankAccountOwnershipVerification>(
        'bank_account_ownership_verification',
        bankAccountOwnershipVerification);
    writer.writeAdditionalData(additionalData);
  }
}
