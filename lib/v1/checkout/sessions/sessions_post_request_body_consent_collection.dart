// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_consent_collection_payment_method_reuse_agreement.dart';
import './sessions_post_request_body_consent_collection_promotions.dart';
import './sessions_post_request_body_consent_collection_terms_of_service.dart';

/// auto generated
/// Configure fields for the Checkout Session to gather active consent from customers.
class SessionsPostRequestBodyConsentCollection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The payment_method_reuse_agreement property
  SessionsPostRequestBodyConsentCollectionPaymentMethodReuseAgreement?
      paymentMethodReuseAgreement;

  ///  The promotions property
  SessionsPostRequestBodyConsentCollectionPromotions? promotions;

  ///  The terms_of_service property
  SessionsPostRequestBodyConsentCollectionTermsOfService? termsOfService;

  /// Instantiates a new [SessionsPostRequestBodyConsentCollection] and sets the default values.
  SessionsPostRequestBodyConsentCollection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyConsentCollection createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyConsentCollection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_method_reuse_agreement'] = (node) =>
        paymentMethodReuseAgreement = node.getObjectValue<
                SessionsPostRequestBodyConsentCollectionPaymentMethodReuseAgreement>(
            SessionsPostRequestBodyConsentCollectionPaymentMethodReuseAgreement
                .createFromDiscriminatorValue);
    deserializerMap['promotions'] = (node) => promotions =
        node.getEnumValue<SessionsPostRequestBodyConsentCollectionPromotions>(
            (stringValue) => SessionsPostRequestBodyConsentCollectionPromotions
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['terms_of_service'] = (node) => termsOfService = node
        .getEnumValue<SessionsPostRequestBodyConsentCollectionTermsOfService>(
            (stringValue) =>
                SessionsPostRequestBodyConsentCollectionTermsOfService.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SessionsPostRequestBodyConsentCollectionPaymentMethodReuseAgreement>(
        'payment_method_reuse_agreement', paymentMethodReuseAgreement);
    writer.writeEnumValue<SessionsPostRequestBodyConsentCollectionPromotions>(
        'promotions', promotions, (e) => e?.value);
    writer
        .writeEnumValue<SessionsPostRequestBodyConsentCollectionTermsOfService>(
            'terms_of_service', termsOfService, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
