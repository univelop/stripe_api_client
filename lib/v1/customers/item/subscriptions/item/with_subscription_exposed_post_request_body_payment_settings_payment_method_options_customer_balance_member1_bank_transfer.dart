// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_customer_balance_member1_bank_transfer_eu_bank_transfer.dart';

/// auto generated
class WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The eu_bank_transfer property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer?
      euBankTransfer;

  ///  The type property
  String? type_;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer] and sets the default values.
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'eu_bank_transfer'] = (node) => euBankTransfer = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer>(
        WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer>(
        'eu_bank_transfer', euBankTransfer);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
