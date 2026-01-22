// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_customer_balance_bank_transfer_eu_bank_transfer.dart';
import './sessions_post_request_body_payment_method_options_customer_balance_bank_transfer_requested_address_types.dart';
import './sessions_post_request_body_payment_method_options_customer_balance_bank_transfer_type.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The eu_bank_transfer property
  SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer?
      euBankTransfer;

  ///  The requested_address_types property
  Iterable<
          SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransferRequestedAddressTypes>?
      requestedAddressTypes;

  ///  The type property
  SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransferType?
      type_;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransfer] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransfer()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransfer
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'eu_bank_transfer'] = (node) => euBankTransfer = node.getObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer>(
        SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer
            .createFromDiscriminatorValue);
    deserializerMap['requested_address_types'] = (node) =>
        requestedAddressTypes = node.getCollectionOfEnumValues<
                SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransferRequestedAddressTypes>(
            (stringValue) =>
                SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransferRequestedAddressTypes
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransferType>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransferType
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
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer>(
        'eu_bank_transfer', euBankTransfer);
    writer.writeCollectionOfEnumValues<
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransferRequestedAddressTypes>(
        'requested_address_types', requestedAddressTypes, (e) => e?.value);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransferType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
