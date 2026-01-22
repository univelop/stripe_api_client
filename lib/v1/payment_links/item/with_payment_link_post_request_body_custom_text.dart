// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_custom_text_after_submit.dart';
import './with_payment_link_post_request_body_custom_text_shipping_address.dart';
import './with_payment_link_post_request_body_custom_text_submit.dart';
import './with_payment_link_post_request_body_custom_text_terms_of_service_acceptance.dart';

/// auto generated
/// Display additional text for your customers using custom text.
class WithPaymentLinkPostRequestBodyCustomText
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The after_submit property
  WithPaymentLinkPostRequestBodyCustomTextAfterSubmit? afterSubmit;

  ///  The shipping_address property
  WithPaymentLinkPostRequestBodyCustomTextShippingAddress? shippingAddress;

  ///  The submit property
  WithPaymentLinkPostRequestBodyCustomTextSubmit? submit;

  ///  The terms_of_service_acceptance property
  WithPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptance?
      termsOfServiceAcceptance;

  /// Instantiates a new [WithPaymentLinkPostRequestBodyCustomText] and sets the default values.
  WithPaymentLinkPostRequestBodyCustomText() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyCustomText createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodyCustomText();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['after_submit'] = (node) => afterSubmit = node
        .getObjectValue<WithPaymentLinkPostRequestBodyCustomTextAfterSubmit>(
            WithPaymentLinkPostRequestBodyCustomTextAfterSubmit
                .createFromDiscriminatorValue);
    deserializerMap['shipping_address'] = (node) => shippingAddress =
        node.getObjectValue<
                WithPaymentLinkPostRequestBodyCustomTextShippingAddress>(
            WithPaymentLinkPostRequestBodyCustomTextShippingAddress
                .createFromDiscriminatorValue);
    deserializerMap['submit'] = (node) => submit =
        node.getObjectValue<WithPaymentLinkPostRequestBodyCustomTextSubmit>(
            WithPaymentLinkPostRequestBodyCustomTextSubmit
                .createFromDiscriminatorValue);
    deserializerMap['terms_of_service_acceptance'] = (node) =>
        termsOfServiceAcceptance = node.getObjectValue<
                WithPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptance>(
            WithPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptance
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<WithPaymentLinkPostRequestBodyCustomTextAfterSubmit>(
            'after_submit', afterSubmit);
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyCustomTextShippingAddress>(
        'shipping_address', shippingAddress);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodyCustomTextSubmit>(
        'submit', submit);
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyCustomTextTermsOfServiceAcceptance>(
        'terms_of_service_acceptance', termsOfServiceAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
