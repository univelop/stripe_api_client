// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_customer_balance_member1_bank_transfer_eu_bank_transfer.dart';
import './with_intent_post_request_body_payment_method_options_customer_balance_member1_bank_transfer_requested_address_types.dart';
import './with_intent_post_request_body_payment_method_options_customer_balance_member1_bank_transfer_type.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The eu_bank_transfer property
  WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer?
      euBankTransfer;

  ///  The requested_address_types property
  Iterable<
          WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferRequestedAddressTypes>?
      requestedAddressTypes;

  ///  The type property
  WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferType?
      type_;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'eu_bank_transfer'] = (node) => euBankTransfer = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer>(
        WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer
            .createFromDiscriminatorValue);
    deserializerMap['requested_address_types'] = (node) =>
        requestedAddressTypes = node.getCollectionOfEnumValues<
                WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferRequestedAddressTypes>(
            (stringValue) =>
                WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferRequestedAddressTypes
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferType>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferType
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
            WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer>(
        'eu_bank_transfer', euBankTransfer);
    writer.writeCollectionOfEnumValues<
            WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferRequestedAddressTypes>(
        'requested_address_types', requestedAddressTypes, (e) => e?.value);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
