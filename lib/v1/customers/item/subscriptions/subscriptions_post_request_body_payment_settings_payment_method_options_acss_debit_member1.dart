// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_acss_debit_member1_mandate_options.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_acss_debit_member1_verification_method.dart';

/// auto generated
class SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptions?
      mandateOptions;

  ///  The verification_method property
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1VerificationMethod?
      verificationMethod;

  /// Instantiates a new [SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1] and sets the default values.
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptions>(
        SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptions
            .createFromDiscriminatorValue);
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1VerificationMethod>(
        (stringValue) =>
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1VerificationMethod
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
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1VerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
