// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_card_member1_installments.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_card_member1_request_three_d_secure.dart';

/// auto generated
class InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The installments property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Installments?
      installments;

  ///  The request_three_d_secure property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure?
      requestThreeDSecure;

  /// Instantiates a new [InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1] and sets the default values.
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'installments'] = (node) => installments = node.getObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Installments>(
        InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Installments
            .createFromDiscriminatorValue);
    deserializerMap[
        'request_three_d_secure'] = (node) => requestThreeDSecure = node.getEnumValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        (stringValue) =>
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure
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
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Installments>(
        'installments', installments);
    writer.writeEnumValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
