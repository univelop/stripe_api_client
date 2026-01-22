// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_customer_balance_member1_bank_transfer_eu_bank_transfer.dart';

/// auto generated
class SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The eu_bank_transfer property
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer?
      euBankTransfer;

  ///  The type property
  String? type_;

  /// Instantiates a new [SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer] and sets the default values.
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'eu_bank_transfer'] = (node) => euBankTransfer = node.getObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer>(
        SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer>(
        'eu_bank_transfer', euBankTransfer);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
