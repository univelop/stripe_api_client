// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_bancontact_member1_preferred_language.dart';

/// auto generated
class WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preferred_language property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1PreferredLanguage?
      preferredLanguage;

  /// Instantiates a new [WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1] and sets the default values.
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'preferred_language'] = (node) => preferredLanguage = node.getEnumValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1PreferredLanguage>(
        (stringValue) =>
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1PreferredLanguage
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
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1PreferredLanguage>(
        'preferred_language', preferredLanguage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
