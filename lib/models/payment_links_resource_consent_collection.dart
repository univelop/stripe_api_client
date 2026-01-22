// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_resource_consent_collection_promotions.dart';
import './payment_links_resource_consent_collection_terms_of_service.dart';
import './payment_links_resource_payment_method_reuse_agreement.dart';

/// auto generated
class PaymentLinksResourceConsentCollection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Settings related to the payment method reuse text shown in the Checkout UI.
  PaymentLinksResourcePaymentMethodReuseAgreement? paymentMethodReuseAgreement;

  ///  If set to `auto`, enables the collection of customer consent for promotional communications.
  PaymentLinksResourceConsentCollectionPromotions? promotions;

  ///  If set to `required`, it requires cutomers to accept the terms of service before being able to pay. If set to `none`, customers won't be shown a checkbox to accept the terms of service.
  PaymentLinksResourceConsentCollectionTermsOfService? termsOfService;

  /// Instantiates a new [PaymentLinksResourceConsentCollection] and sets the default values.
  PaymentLinksResourceConsentCollection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceConsentCollection createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksResourceConsentCollection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_method_reuse_agreement'] = (node) =>
        paymentMethodReuseAgreement = node
            .getObjectValue<PaymentLinksResourcePaymentMethodReuseAgreement>(
                PaymentLinksResourcePaymentMethodReuseAgreement
                    .createFromDiscriminatorValue);
    deserializerMap['promotions'] = (node) => promotions =
        node.getEnumValue<PaymentLinksResourceConsentCollectionPromotions>(
            (stringValue) => PaymentLinksResourceConsentCollectionPromotions
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['terms_of_service'] = (node) => termsOfService =
        node.getEnumValue<PaymentLinksResourceConsentCollectionTermsOfService>(
            (stringValue) => PaymentLinksResourceConsentCollectionTermsOfService
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentLinksResourcePaymentMethodReuseAgreement>(
        'payment_method_reuse_agreement', paymentMethodReuseAgreement);
    writer.writeEnumValue<PaymentLinksResourceConsentCollectionPromotions>(
        'promotions', promotions, (e) => e?.value);
    writer.writeEnumValue<PaymentLinksResourceConsentCollectionTermsOfService>(
        'terms_of_service', termsOfService, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
