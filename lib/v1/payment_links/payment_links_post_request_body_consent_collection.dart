// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_consent_collection_payment_method_reuse_agreement.dart';
import './payment_links_post_request_body_consent_collection_promotions.dart';
import './payment_links_post_request_body_consent_collection_terms_of_service.dart';

/// auto generated
/// Configure fields to gather active consent from customers.
class PaymentLinksPostRequestBodyConsentCollection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The payment_method_reuse_agreement property
  PaymentLinksPostRequestBodyConsentCollectionPaymentMethodReuseAgreement?
      paymentMethodReuseAgreement;

  ///  The promotions property
  PaymentLinksPostRequestBodyConsentCollectionPromotions? promotions;

  ///  The terms_of_service property
  PaymentLinksPostRequestBodyConsentCollectionTermsOfService? termsOfService;

  /// Instantiates a new [PaymentLinksPostRequestBodyConsentCollection] and sets the default values.
  PaymentLinksPostRequestBodyConsentCollection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyConsentCollection
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksPostRequestBodyConsentCollection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_method_reuse_agreement'] = (node) =>
        paymentMethodReuseAgreement = node.getObjectValue<
                PaymentLinksPostRequestBodyConsentCollectionPaymentMethodReuseAgreement>(
            PaymentLinksPostRequestBodyConsentCollectionPaymentMethodReuseAgreement
                .createFromDiscriminatorValue);
    deserializerMap['promotions'] = (node) => promotions = node
        .getEnumValue<PaymentLinksPostRequestBodyConsentCollectionPromotions>(
            (stringValue) =>
                PaymentLinksPostRequestBodyConsentCollectionPromotions.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['terms_of_service'] = (node) => termsOfService =
        node.getEnumValue<
                PaymentLinksPostRequestBodyConsentCollectionTermsOfService>(
            (stringValue) =>
                PaymentLinksPostRequestBodyConsentCollectionTermsOfService
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentLinksPostRequestBodyConsentCollectionPaymentMethodReuseAgreement>(
        'payment_method_reuse_agreement', paymentMethodReuseAgreement);
    writer
        .writeEnumValue<PaymentLinksPostRequestBodyConsentCollectionPromotions>(
            'promotions', promotions, (e) => e?.value);
    writer.writeEnumValue<
            PaymentLinksPostRequestBodyConsentCollectionTermsOfService>(
        'terms_of_service', termsOfService, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
