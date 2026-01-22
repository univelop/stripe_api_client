// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_custom_text_after_submit.dart';
import './payment_links_post_request_body_custom_text_shipping_address.dart';
import './payment_links_post_request_body_custom_text_submit.dart';
import './payment_links_post_request_body_custom_text_terms_of_service_acceptance.dart';

/// auto generated
/// Display additional text for your customers using custom text.
class PaymentLinksPostRequestBodyCustomText
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The after_submit property
  PaymentLinksPostRequestBodyCustomTextAfterSubmit? afterSubmit;

  ///  The shipping_address property
  PaymentLinksPostRequestBodyCustomTextShippingAddress? shippingAddress;

  ///  The submit property
  PaymentLinksPostRequestBodyCustomTextSubmit? submit;

  ///  The terms_of_service_acceptance property
  PaymentLinksPostRequestBodyCustomTextTermsOfServiceAcceptance?
      termsOfServiceAcceptance;

  /// Instantiates a new [PaymentLinksPostRequestBodyCustomText] and sets the default values.
  PaymentLinksPostRequestBodyCustomText() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyCustomText createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksPostRequestBodyCustomText();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['after_submit'] = (node) => afterSubmit =
        node.getObjectValue<PaymentLinksPostRequestBodyCustomTextAfterSubmit>(
            PaymentLinksPostRequestBodyCustomTextAfterSubmit
                .createFromDiscriminatorValue);
    deserializerMap['shipping_address'] = (node) => shippingAddress = node
        .getObjectValue<PaymentLinksPostRequestBodyCustomTextShippingAddress>(
            PaymentLinksPostRequestBodyCustomTextShippingAddress
                .createFromDiscriminatorValue);
    deserializerMap['submit'] = (node) => submit =
        node.getObjectValue<PaymentLinksPostRequestBodyCustomTextSubmit>(
            PaymentLinksPostRequestBodyCustomTextSubmit
                .createFromDiscriminatorValue);
    deserializerMap['terms_of_service_acceptance'] = (node) =>
        termsOfServiceAcceptance = node.getObjectValue<
                PaymentLinksPostRequestBodyCustomTextTermsOfServiceAcceptance>(
            PaymentLinksPostRequestBodyCustomTextTermsOfServiceAcceptance
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentLinksPostRequestBodyCustomTextAfterSubmit>(
        'after_submit', afterSubmit);
    writer
        .writeObjectValue<PaymentLinksPostRequestBodyCustomTextShippingAddress>(
            'shipping_address', shippingAddress);
    writer.writeObjectValue<PaymentLinksPostRequestBodyCustomTextSubmit>(
        'submit', submit);
    writer.writeObjectValue<
            PaymentLinksPostRequestBodyCustomTextTermsOfServiceAcceptance>(
        'terms_of_service_acceptance', termsOfServiceAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
