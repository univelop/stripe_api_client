// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_acss_debit_member1_mandate_options.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_acss_debit_member1_verification_method.dart';

/// auto generated
class WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptions?
      mandateOptions;

  ///  The verification_method property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1VerificationMethod?
      verificationMethod;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1] and sets the default values.
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptions>(
        WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptions
            .createFromDiscriminatorValue);
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1VerificationMethod>(
        (stringValue) =>
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1VerificationMethod
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
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1VerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
