// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_bancontact_member1_preferred_language.dart';
import './payment_intents_post_request_body_payment_method_options_bancontact_member1_setup_future_usage.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontactMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preferred_language property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontactMember1PreferredLanguage?
      preferredLanguage;

  ///  The setup_future_usage property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontactMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontactMember1] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontactMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontactMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontactMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'preferred_language'] = (node) => preferredLanguage = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontactMember1PreferredLanguage>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontactMember1PreferredLanguage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontactMember1SetupFutureUsage>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontactMember1SetupFutureUsage
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
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontactMember1PreferredLanguage>(
        'preferred_language', preferredLanguage, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontactMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
