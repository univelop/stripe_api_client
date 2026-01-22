// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_company_verification_document.dart';

/// auto generated
class WithAccountPostRequestBodyCompanyVerification
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The document property
  WithAccountPostRequestBodyCompanyVerificationDocument? document;

  /// Instantiates a new [WithAccountPostRequestBodyCompanyVerification] and sets the default values.
  WithAccountPostRequestBodyCompanyVerification() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodyCompanyVerification
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithAccountPostRequestBodyCompanyVerification();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['document'] = (node) => document = node
        .getObjectValue<WithAccountPostRequestBodyCompanyVerificationDocument>(
            WithAccountPostRequestBodyCompanyVerificationDocument
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithAccountPostRequestBodyCompanyVerificationDocument>(
        'document', document);
    writer.writeAdditionalData(additionalData);
  }
}
