// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_card_member1_installments_plan.dart';

/// auto generated
class WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Installments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The plan property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlan?
      plan;

  /// Instantiates a new [WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Installments] and sets the default values.
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Installments()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Installments
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Installments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['plan'] = (node) => plan = node.getObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlan>(
        WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlan
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1InstallmentsPlan>(
        'plan', plan);
    writer.writeAdditionalData(additionalData);
  }
}
