// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_consent_promotions.dart';
import './payment_pages_checkout_session_consent_terms_of_service.dart';

/// auto generated
class PaymentPagesCheckoutSessionConsent
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  If `opt_in`, the customer consents to receiving promotional communicationsfrom the merchant about this Checkout Session.
  PaymentPagesCheckoutSessionConsentPromotions? promotions;

  ///  If `accepted`, the customer in this Checkout Session has agreed to the merchant's terms of service.
  PaymentPagesCheckoutSessionConsentTermsOfService? termsOfService;

  /// Instantiates a new [PaymentPagesCheckoutSessionConsent] and sets the default values.
  PaymentPagesCheckoutSessionConsent() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionConsent createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentPagesCheckoutSessionConsent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['promotions'] = (node) => promotions =
        node.getEnumValue<PaymentPagesCheckoutSessionConsentPromotions>(
            (stringValue) => PaymentPagesCheckoutSessionConsentPromotions.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['terms_of_service'] = (node) => termsOfService =
        node.getEnumValue<PaymentPagesCheckoutSessionConsentTermsOfService>(
            (stringValue) => PaymentPagesCheckoutSessionConsentTermsOfService
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentPagesCheckoutSessionConsentPromotions>(
        'promotions', promotions, (e) => e?.value);
    writer.writeEnumValue<PaymentPagesCheckoutSessionConsentTermsOfService>(
        'terms_of_service', termsOfService, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
