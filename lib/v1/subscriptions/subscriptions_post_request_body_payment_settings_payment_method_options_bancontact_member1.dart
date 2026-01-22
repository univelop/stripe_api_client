// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_bancontact_member1_preferred_language.dart';

/// auto generated
class SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preferred_language property
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1PreferredLanguage?
      preferredLanguage;

  /// Instantiates a new [SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1] and sets the default values.
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'preferred_language'] = (node) => preferredLanguage = node.getEnumValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1PreferredLanguage>(
        (stringValue) =>
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1PreferredLanguage
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
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1PreferredLanguage>(
        'preferred_language', preferredLanguage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
