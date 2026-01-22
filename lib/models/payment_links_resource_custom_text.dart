// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_resource_custom_text_position.dart';

/// auto generated
class PaymentLinksResourceCustomText implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Custom text that should be displayed after the payment confirmation button.
  PaymentLinksResourceCustomTextPosition? afterSubmit;

  ///  Custom text that should be displayed alongside shipping address collection.
  PaymentLinksResourceCustomTextPosition? shippingAddress;

  ///  Custom text that should be displayed alongside the payment confirmation button.
  PaymentLinksResourceCustomTextPosition? submit;

  ///  Custom text that should be displayed in place of the default terms of service agreement text.
  PaymentLinksResourceCustomTextPosition? termsOfServiceAcceptance;

  /// Instantiates a new [PaymentLinksResourceCustomText] and sets the default values.
  PaymentLinksResourceCustomText() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceCustomText createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksResourceCustomText();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['after_submit'] = (node) => afterSubmit =
        node.getObjectValue<PaymentLinksResourceCustomTextPosition>(
            PaymentLinksResourceCustomTextPosition
                .createFromDiscriminatorValue);
    deserializerMap['shipping_address'] = (node) => shippingAddress =
        node.getObjectValue<PaymentLinksResourceCustomTextPosition>(
            PaymentLinksResourceCustomTextPosition
                .createFromDiscriminatorValue);
    deserializerMap['submit'] = (node) => submit = node.getObjectValue<
            PaymentLinksResourceCustomTextPosition>(
        PaymentLinksResourceCustomTextPosition.createFromDiscriminatorValue);
    deserializerMap['terms_of_service_acceptance'] = (node) =>
        termsOfServiceAcceptance =
            node.getObjectValue<PaymentLinksResourceCustomTextPosition>(
                PaymentLinksResourceCustomTextPosition
                    .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentLinksResourceCustomTextPosition>(
        'after_submit', afterSubmit);
    writer.writeObjectValue<PaymentLinksResourceCustomTextPosition>(
        'shipping_address', shippingAddress);
    writer.writeObjectValue<PaymentLinksResourceCustomTextPosition>(
        'submit', submit);
    writer.writeObjectValue<PaymentLinksResourceCustomTextPosition>(
        'terms_of_service_acceptance', termsOfServiceAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
