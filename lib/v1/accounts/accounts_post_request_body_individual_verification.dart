// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_individual_verification_additional_document.dart';
import './accounts_post_request_body_individual_verification_document.dart';

/// auto generated
class AccountsPostRequestBodyIndividualVerification
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_document property
  AccountsPostRequestBodyIndividualVerificationAdditionalDocument?
      additionalDocument;

  ///  The document property
  AccountsPostRequestBodyIndividualVerificationDocument? document;

  /// Instantiates a new [AccountsPostRequestBodyIndividualVerification] and sets the default values.
  AccountsPostRequestBodyIndividualVerification() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyIndividualVerification
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountsPostRequestBodyIndividualVerification();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_document'] = (node) => additionalDocument =
        node.getObjectValue<
                AccountsPostRequestBodyIndividualVerificationAdditionalDocument>(
            AccountsPostRequestBodyIndividualVerificationAdditionalDocument
                .createFromDiscriminatorValue);
    deserializerMap['document'] = (node) => document = node
        .getObjectValue<AccountsPostRequestBodyIndividualVerificationDocument>(
            AccountsPostRequestBodyIndividualVerificationDocument
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            AccountsPostRequestBodyIndividualVerificationAdditionalDocument>(
        'additional_document', additionalDocument);
    writer.writeObjectValue<
            AccountsPostRequestBodyIndividualVerificationDocument>(
        'document', document);
    writer.writeAdditionalData(additionalData);
  }
}
