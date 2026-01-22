// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_consent_collection_payment_method_reuse_agreement_position.dart';

/// auto generated
class SessionsPostRequestBodyConsentCollectionPaymentMethodReuseAgreement
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The position property
  SessionsPostRequestBodyConsentCollectionPaymentMethodReuseAgreementPosition?
      position;

  /// Instantiates a new [SessionsPostRequestBodyConsentCollectionPaymentMethodReuseAgreement] and sets the default values.
  SessionsPostRequestBodyConsentCollectionPaymentMethodReuseAgreement()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyConsentCollectionPaymentMethodReuseAgreement
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyConsentCollectionPaymentMethodReuseAgreement();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['position'] = (node) => position = node.getEnumValue<
            SessionsPostRequestBodyConsentCollectionPaymentMethodReuseAgreementPosition>(
        (stringValue) =>
            SessionsPostRequestBodyConsentCollectionPaymentMethodReuseAgreementPosition
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            SessionsPostRequestBodyConsentCollectionPaymentMethodReuseAgreementPosition>(
        'position', position, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
