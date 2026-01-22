// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './verification_sessions_post_request_body_options_document.dart';

/// auto generated
/// A set of options for the session’s verification checks.
class VerificationSessionsPostRequestBodyOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The document property
  VerificationSessionsPostRequestBodyOptionsDocument? document;

  /// Instantiates a new [VerificationSessionsPostRequestBodyOptions] and sets the default values.
  VerificationSessionsPostRequestBodyOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static VerificationSessionsPostRequestBodyOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return VerificationSessionsPostRequestBodyOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['document'] = (node) => document =
        node.getObjectValue<VerificationSessionsPostRequestBodyOptionsDocument>(
            VerificationSessionsPostRequestBodyOptionsDocument
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<VerificationSessionsPostRequestBodyOptionsDocument>(
        'document', document);
    writer.writeAdditionalData(additionalData);
  }
}
