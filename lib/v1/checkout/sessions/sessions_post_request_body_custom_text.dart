// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_custom_text_after_submit.dart';
import './sessions_post_request_body_custom_text_shipping_address.dart';
import './sessions_post_request_body_custom_text_submit.dart';
import './sessions_post_request_body_custom_text_terms_of_service_acceptance.dart';

/// auto generated
/// Display additional text for your customers using custom text.
class SessionsPostRequestBodyCustomText
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The after_submit property
  SessionsPostRequestBodyCustomTextAfterSubmit? afterSubmit;

  ///  The shipping_address property
  SessionsPostRequestBodyCustomTextShippingAddress? shippingAddress;

  ///  The submit property
  SessionsPostRequestBodyCustomTextSubmit? submit;

  ///  The terms_of_service_acceptance property
  SessionsPostRequestBodyCustomTextTermsOfServiceAcceptance?
      termsOfServiceAcceptance;

  /// Instantiates a new [SessionsPostRequestBodyCustomText] and sets the default values.
  SessionsPostRequestBodyCustomText() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyCustomText createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyCustomText();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['after_submit'] = (node) => afterSubmit =
        node.getObjectValue<SessionsPostRequestBodyCustomTextAfterSubmit>(
            SessionsPostRequestBodyCustomTextAfterSubmit
                .createFromDiscriminatorValue);
    deserializerMap['shipping_address'] = (node) => shippingAddress =
        node.getObjectValue<SessionsPostRequestBodyCustomTextShippingAddress>(
            SessionsPostRequestBodyCustomTextShippingAddress
                .createFromDiscriminatorValue);
    deserializerMap['submit'] = (node) => submit = node.getObjectValue<
            SessionsPostRequestBodyCustomTextSubmit>(
        SessionsPostRequestBodyCustomTextSubmit.createFromDiscriminatorValue);
    deserializerMap['terms_of_service_acceptance'] = (node) =>
        termsOfServiceAcceptance = node.getObjectValue<
                SessionsPostRequestBodyCustomTextTermsOfServiceAcceptance>(
            SessionsPostRequestBodyCustomTextTermsOfServiceAcceptance
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SessionsPostRequestBodyCustomTextAfterSubmit>(
        'after_submit', afterSubmit);
    writer.writeObjectValue<SessionsPostRequestBodyCustomTextShippingAddress>(
        'shipping_address', shippingAddress);
    writer.writeObjectValue<SessionsPostRequestBodyCustomTextSubmit>(
        'submit', submit);
    writer.writeObjectValue<
            SessionsPostRequestBodyCustomTextTermsOfServiceAcceptance>(
        'terms_of_service_acceptance', termsOfServiceAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
