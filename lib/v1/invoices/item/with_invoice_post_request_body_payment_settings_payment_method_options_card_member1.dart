// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_card_member1_installments.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_card_member1_request_three_d_secure.dart';

/// auto generated
class WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The installments property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Installments?
      installments;

  ///  The request_three_d_secure property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure?
      requestThreeDSecure;

  /// Instantiates a new [WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1] and sets the default values.
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'installments'] = (node) => installments = node.getObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Installments>(
        WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Installments
            .createFromDiscriminatorValue);
    deserializerMap[
        'request_three_d_secure'] = (node) => requestThreeDSecure = node.getEnumValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        (stringValue) =>
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure
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
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Installments>(
        'installments', installments);
    writer.writeEnumValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
