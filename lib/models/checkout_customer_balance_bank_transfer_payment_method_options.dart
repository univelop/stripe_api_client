// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './checkout_customer_balance_bank_transfer_payment_method_options_requested_address_types.dart';
import './checkout_customer_balance_bank_transfer_payment_method_options_type.dart';
import './payment_method_options_customer_balance_eu_bank_account.dart';

/// auto generated
class CheckoutCustomerBalanceBankTransferPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The eu_bank_transfer property
  PaymentMethodOptionsCustomerBalanceEuBankAccount? euBankTransfer;

  ///  List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
  Iterable<
          CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes>?
      requestedAddressTypes;

  ///  The bank transfer type that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
  CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType? type_;

  /// Instantiates a new [CheckoutCustomerBalanceBankTransferPaymentMethodOptions] and sets the default values.
  CheckoutCustomerBalanceBankTransferPaymentMethodOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CheckoutCustomerBalanceBankTransferPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CheckoutCustomerBalanceBankTransferPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['eu_bank_transfer'] = (node) => euBankTransfer =
        node.getObjectValue<PaymentMethodOptionsCustomerBalanceEuBankAccount>(
            PaymentMethodOptionsCustomerBalanceEuBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['requested_address_types'] = (node) =>
        requestedAddressTypes = node.getCollectionOfEnumValues<
                CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes>(
            (stringValue) =>
                CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType>(
        (stringValue) =>
            CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodOptionsCustomerBalanceEuBankAccount>(
        'eu_bank_transfer', euBankTransfer);
    writer.writeCollectionOfEnumValues<
            CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes>(
        'requested_address_types', requestedAddressTypes, (e) => e?.value);
    writer.writeEnumValue<
            CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
