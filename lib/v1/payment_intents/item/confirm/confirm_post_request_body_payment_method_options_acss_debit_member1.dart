// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_acss_debit_member1_mandate_options.dart';
import './confirm_post_request_body_payment_method_options_acss_debit_member1_setup_future_usage.dart';
import './confirm_post_request_body_payment_method_options_acss_debit_member1_verification_method.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptions?
      mandateOptions;

  ///  The setup_future_usage property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1SetupFutureUsage?
      setupFutureUsage;

  ///  The target_date property
  String? targetDate;

  ///  The verification_method property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1VerificationMethod?
      verificationMethod;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptions>(
        ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptions
            .createFromDiscriminatorValue);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1SetupFutureUsage>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['target_date'] =
        (node) => targetDate = node.getStringValue();
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1VerificationMethod>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1VerificationMethod
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
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('target_date', targetDate);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1VerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
