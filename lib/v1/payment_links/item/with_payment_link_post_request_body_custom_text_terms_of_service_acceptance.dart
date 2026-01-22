// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_custom_text_terms_of_service_acceptance_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1]
class WithPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptance
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1]
  WithPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1?
      withPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptance
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptance();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1 =
          WithPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1 !=
        null) {
      withPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1!
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
              WithPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1>(
          null,
          withPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptanceMember1);
    }
  }
}
