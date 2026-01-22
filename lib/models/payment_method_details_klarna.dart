// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './klarna_payer_details.dart';

/// auto generated
class PaymentMethodDetailsKlarna implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The payer details for this transaction.
  KlarnaPayerDetails? payerDetails;

  ///  The Klarna payment method used for this transaction.Can be one of `pay_later`, `pay_now`, `pay_with_financing`, or `pay_in_installments`
  String? paymentMethodCategory;

  ///  Preferred language of the Klarna authorization page that the customer is redirected to.Can be one of `de-AT`, `en-AT`, `nl-BE`, `fr-BE`, `en-BE`, `de-DE`, `en-DE`, `da-DK`, `en-DK`, `es-ES`, `en-ES`, `fi-FI`, `sv-FI`, `en-FI`, `en-GB`, `en-IE`, `it-IT`, `en-IT`, `nl-NL`, `en-NL`, `nb-NO`, `en-NO`, `sv-SE`, `en-SE`, `en-US`, `es-US`, `fr-FR`, `en-FR`, `cs-CZ`, `en-CZ`, `ro-RO`, `en-RO`, `el-GR`, `en-GR`, `en-AU`, `en-NZ`, `en-CA`, `fr-CA`, `pl-PL`, `en-PL`, `pt-PT`, `en-PT`, `de-CH`, `fr-CH`, `it-CH`, or `en-CH`
  String? preferredLocale;

  /// Instantiates a new [PaymentMethodDetailsKlarna] and sets the default values.
  PaymentMethodDetailsKlarna() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsKlarna createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsKlarna();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payer_details'] = (node) => payerDetails =
        node.getObjectValue<KlarnaPayerDetails>(
            KlarnaPayerDetails.createFromDiscriminatorValue);
    deserializerMap['payment_method_category'] =
        (node) => paymentMethodCategory = node.getStringValue();
    deserializerMap['preferred_locale'] =
        (node) => preferredLocale = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<KlarnaPayerDetails>('payer_details', payerDetails);
    writer.writeStringValue('payment_method_category', paymentMethodCategory);
    writer.writeStringValue('preferred_locale', preferredLocale);
    writer.writeAdditionalData(additionalData);
  }
}
