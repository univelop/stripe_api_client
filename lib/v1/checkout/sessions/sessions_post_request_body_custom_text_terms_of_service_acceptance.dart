// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_custom_text_terms_of_service_acceptance_member1.dart';

/// auto generated
/// Composed type wrapper for classes [SessionsPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1], [String?]
class SessionsPostRequestBodyCustomTextTermsOfServiceAcceptance
    implements Parsable {
  ///  Composed type representation for type [SessionsPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1]
  SessionsPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1?
      sessionsPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyCustomTextTermsOfServiceAcceptance
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = SessionsPostRequestBodyCustomTextTermsOfServiceAcceptance();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.sessionsPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1 =
          SessionsPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (sessionsPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1 !=
        null) {
      sessionsPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<
              SessionsPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1>(
          null,
          sessionsPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1);
    }
  }
}
