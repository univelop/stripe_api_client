// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_customer_balance_member1_bank_transfer_eu_bank_transfer.dart';
import './payment_intents_post_request_body_payment_method_options_customer_balance_member1_bank_transfer_requested_address_types.dart';
import './payment_intents_post_request_body_payment_method_options_customer_balance_member1_bank_transfer_type.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The eu_bank_transfer property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer?
      euBankTransfer;

  ///  The requested_address_types property
  Iterable<
          PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferRequestedAddressTypes>?
      requestedAddressTypes;

  ///  The type property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferType?
      type_;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'eu_bank_transfer'] = (node) => euBankTransfer = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer
            .createFromDiscriminatorValue);
    deserializerMap['requested_address_types'] = (node) =>
        requestedAddressTypes = node.getCollectionOfEnumValues<
                PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferRequestedAddressTypes>(
            (stringValue) =>
                PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferRequestedAddressTypes
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferType>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferType
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
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer>(
        'eu_bank_transfer', euBankTransfer);
    writer.writeCollectionOfEnumValues<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferRequestedAddressTypes>(
        'requested_address_types', requestedAddressTypes, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransferType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
