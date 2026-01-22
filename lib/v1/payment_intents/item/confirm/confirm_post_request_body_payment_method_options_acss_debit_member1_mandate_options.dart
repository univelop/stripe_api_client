// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_acss_debit_member1_mandate_options_custom_mandate_url.dart';
import './confirm_post_request_body_payment_method_options_acss_debit_member1_mandate_options_payment_schedule.dart';
import './confirm_post_request_body_payment_method_options_acss_debit_member1_mandate_options_transaction_type.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom_mandate_url property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptionsCustomMandateUrl?
      customMandateUrl;

  ///  The interval_description property
  String? intervalDescription;

  ///  The payment_schedule property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptionsPaymentSchedule?
      paymentSchedule;

  ///  The transaction_type property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptionsTransactionType?
      transactionType;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptions] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'custom_mandate_url'] = (node) => customMandateUrl = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptionsCustomMandateUrl>(
        ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptionsCustomMandateUrl
            .createFromDiscriminatorValue);
    deserializerMap['interval_description'] =
        (node) => intervalDescription = node.getStringValue();
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptionsPaymentSchedule>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptionsPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'transaction_type'] = (node) => transactionType = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptionsTransactionType>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptionsTransactionType
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
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptionsCustomMandateUrl>(
        'custom_mandate_url', customMandateUrl);
    writer.writeStringValue('interval_description', intervalDescription);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptionsPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMember1MandateOptionsTransactionType>(
        'transaction_type', transactionType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
