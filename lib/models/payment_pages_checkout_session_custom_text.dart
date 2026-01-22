// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_custom_text_position.dart';

/// auto generated
class PaymentPagesCheckoutSessionCustomText
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Custom text that should be displayed after the payment confirmation button.
  PaymentPagesCheckoutSessionCustomTextPosition? afterSubmit;

  ///  Custom text that should be displayed alongside shipping address collection.
  PaymentPagesCheckoutSessionCustomTextPosition? shippingAddress;

  ///  Custom text that should be displayed alongside the payment confirmation button.
  PaymentPagesCheckoutSessionCustomTextPosition? submit;

  ///  Custom text that should be displayed in place of the default terms of service agreement text.
  PaymentPagesCheckoutSessionCustomTextPosition? termsOfServiceAcceptance;

  /// Instantiates a new [PaymentPagesCheckoutSessionCustomText] and sets the default values.
  PaymentPagesCheckoutSessionCustomText() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionCustomText createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentPagesCheckoutSessionCustomText();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['after_submit'] = (node) => afterSubmit =
        node.getObjectValue<PaymentPagesCheckoutSessionCustomTextPosition>(
            PaymentPagesCheckoutSessionCustomTextPosition
                .createFromDiscriminatorValue);
    deserializerMap['shipping_address'] = (node) => shippingAddress =
        node.getObjectValue<PaymentPagesCheckoutSessionCustomTextPosition>(
            PaymentPagesCheckoutSessionCustomTextPosition
                .createFromDiscriminatorValue);
    deserializerMap['submit'] = (node) => submit =
        node.getObjectValue<PaymentPagesCheckoutSessionCustomTextPosition>(
            PaymentPagesCheckoutSessionCustomTextPosition
                .createFromDiscriminatorValue);
    deserializerMap['terms_of_service_acceptance'] = (node) =>
        termsOfServiceAcceptance =
            node.getObjectValue<PaymentPagesCheckoutSessionCustomTextPosition>(
                PaymentPagesCheckoutSessionCustomTextPosition
                    .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentPagesCheckoutSessionCustomTextPosition>(
        'after_submit', afterSubmit);
    writer.writeObjectValue<PaymentPagesCheckoutSessionCustomTextPosition>(
        'shipping_address', shippingAddress);
    writer.writeObjectValue<PaymentPagesCheckoutSessionCustomTextPosition>(
        'submit', submit);
    writer.writeObjectValue<PaymentPagesCheckoutSessionCustomTextPosition>(
        'terms_of_service_acceptance', termsOfServiceAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
