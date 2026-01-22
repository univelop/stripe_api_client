// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './verification_sessions_post_request_body_options_document_member1_allowed_types.dart';

/// auto generated
class VerificationSessionsPostRequestBodyOptionsDocumentMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The allowed_types property
  Iterable<
          VerificationSessionsPostRequestBodyOptionsDocumentMember1AllowedTypes>?
      allowedTypes;

  ///  The require_id_number property
  bool? requireIdNumber;

  ///  The require_live_capture property
  bool? requireLiveCapture;

  ///  The require_matching_selfie property
  bool? requireMatchingSelfie;

  /// Instantiates a new [VerificationSessionsPostRequestBodyOptionsDocumentMember1] and sets the default values.
  VerificationSessionsPostRequestBodyOptionsDocumentMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static VerificationSessionsPostRequestBodyOptionsDocumentMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return VerificationSessionsPostRequestBodyOptionsDocumentMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'allowed_types'] = (node) => allowedTypes = node.getCollectionOfEnumValues<
            VerificationSessionsPostRequestBodyOptionsDocumentMember1AllowedTypes>(
        (stringValue) =>
            VerificationSessionsPostRequestBodyOptionsDocumentMember1AllowedTypes
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['require_id_number'] =
        (node) => requireIdNumber = node.getBoolValue();
    deserializerMap['require_live_capture'] =
        (node) => requireLiveCapture = node.getBoolValue();
    deserializerMap['require_matching_selfie'] =
        (node) => requireMatchingSelfie = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            VerificationSessionsPostRequestBodyOptionsDocumentMember1AllowedTypes>(
        'allowed_types', allowedTypes, (e) => e?.value);
    writer.writeBoolValue('require_id_number', value: requireIdNumber);
    writer.writeBoolValue('require_live_capture', value: requireLiveCapture);
    writer.writeBoolValue('require_matching_selfie',
        value: requireMatchingSelfie);
    writer.writeAdditionalData(additionalData);
  }
}
