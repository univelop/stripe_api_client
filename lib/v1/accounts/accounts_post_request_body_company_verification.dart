// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_company_verification_document.dart';

/// auto generated
class AccountsPostRequestBodyCompanyVerification
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The document property
  AccountsPostRequestBodyCompanyVerificationDocument? document;

  /// Instantiates a new [AccountsPostRequestBodyCompanyVerification] and sets the default values.
  AccountsPostRequestBodyCompanyVerification() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyCompanyVerification
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountsPostRequestBodyCompanyVerification();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['document'] = (node) => document =
        node.getObjectValue<AccountsPostRequestBodyCompanyVerificationDocument>(
            AccountsPostRequestBodyCompanyVerificationDocument
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<AccountsPostRequestBodyCompanyVerificationDocument>(
        'document', document);
    writer.writeAdditionalData(additionalData);
  }
}
