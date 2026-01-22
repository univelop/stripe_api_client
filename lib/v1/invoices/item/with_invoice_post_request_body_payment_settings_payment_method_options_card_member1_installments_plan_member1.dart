// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_card_member1_installments_plan_member1_interval.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_card_member1_installments_plan_member1_type.dart';

/// auto generated
class WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlanMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The count property
  int? count;

  ///  The interval property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlanMember1Interval?
      interval;

  ///  The type property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlanMember1Type?
      type_;

  /// Instantiates a new [WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlanMember1] and sets the default values.
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlanMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlanMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlanMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['count'] = (node) => count = node.getIntValue();
    deserializerMap['interval'] = (node) => interval = node.getEnumValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlanMember1Interval>(
        (stringValue) =>
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlanMember1Interval
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlanMember1Type>(
        (stringValue) =>
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlanMember1Type
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('count', count);
    writer.writeEnumValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlanMember1Interval>(
        'interval', interval, (e) => e?.value);
    writer.writeEnumValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlanMember1Type>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
