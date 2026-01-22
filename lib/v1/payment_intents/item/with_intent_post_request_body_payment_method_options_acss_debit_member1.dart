// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_acss_debit_member1_mandate_options.dart';
import './with_intent_post_request_body_payment_method_options_acss_debit_member1_setup_future_usage.dart';
import './with_intent_post_request_body_payment_method_options_acss_debit_member1_verification_method.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptions?
      mandateOptions;

  ///  The setup_future_usage property
  WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1SetupFutureUsage?
      setupFutureUsage;

  ///  The target_date property
  String? targetDate;

  ///  The verification_method property
  WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1VerificationMethod?
      verificationMethod;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptions>(
        WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptions
            .createFromDiscriminatorValue);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1SetupFutureUsage>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['target_date'] =
        (node) => targetDate = node.getStringValue();
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1VerificationMethod>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1VerificationMethod
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
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('target_date', targetDate);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMember1VerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
