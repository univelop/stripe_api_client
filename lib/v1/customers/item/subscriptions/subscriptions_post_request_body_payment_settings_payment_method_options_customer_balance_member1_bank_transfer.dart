// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_customer_balance_member1_bank_transfer_eu_bank_transfer.dart';

/// auto generated
class SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The eu_bank_transfer property
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer?
      euBankTransfer;

  ///  The type property
  String? type_;

  /// Instantiates a new [SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer] and sets the default values.
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'eu_bank_transfer'] = (node) => euBankTransfer = node.getObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer>(
        SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer>(
        'eu_bank_transfer', euBankTransfer);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
