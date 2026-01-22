// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './people_post_request_body_verification_additional_document.dart';
import './people_post_request_body_verification_document.dart';

/// auto generated
/// The person's verification status.
class PeoplePostRequestBodyVerification
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_document property
  PeoplePostRequestBodyVerificationAdditionalDocument? additionalDocument;

  ///  The document property
  PeoplePostRequestBodyVerificationDocument? document;

  /// Instantiates a new [PeoplePostRequestBodyVerification] and sets the default values.
  PeoplePostRequestBodyVerification() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PeoplePostRequestBodyVerification createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PeoplePostRequestBodyVerification();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_document'] = (node) => additionalDocument = node
        .getObjectValue<PeoplePostRequestBodyVerificationAdditionalDocument>(
            PeoplePostRequestBodyVerificationAdditionalDocument
                .createFromDiscriminatorValue);
    deserializerMap['document'] = (node) => document = node.getObjectValue<
            PeoplePostRequestBodyVerificationDocument>(
        PeoplePostRequestBodyVerificationDocument.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<PeoplePostRequestBodyVerificationAdditionalDocument>(
            'additional_document', additionalDocument);
    writer.writeObjectValue<PeoplePostRequestBodyVerificationDocument>(
        'document', document);
    writer.writeAdditionalData(additionalData);
  }
}
