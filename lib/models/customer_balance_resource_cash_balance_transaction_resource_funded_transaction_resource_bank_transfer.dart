// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_balance_resource_cash_balance_transaction_resource_funded_transaction_resource_bank_transfer_resource_eu_bank_transfer.dart';
import './customer_balance_resource_cash_balance_transaction_resource_funded_transaction_resource_bank_transfer_resource_gb_bank_transfer.dart';
import './customer_balance_resource_cash_balance_transaction_resource_funded_transaction_resource_bank_transfer_resource_jp_bank_transfer.dart';
import './customer_balance_resource_cash_balance_transaction_resource_funded_transaction_resource_bank_transfer_resource_us_bank_transfer.dart';
import './customer_balance_resource_cash_balance_transaction_resource_funded_transaction_resource_bank_transfer_type.dart';

/// auto generated
class CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The eu_bank_transfer property
  CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer?
      euBankTransfer;

  ///  The gb_bank_transfer property
  CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer?
      gbBankTransfer;

  ///  The jp_bank_transfer property
  CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceJpBankTransfer?
      jpBankTransfer;

  ///  The user-supplied reference field on the bank transfer.
  String? reference;

  ///  The funding method type used to fund the customer balance. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
  CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType?
      type_;

  ///  The us_bank_transfer property
  CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceUsBankTransfer?
      usBankTransfer;

  /// Instantiates a new [CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer] and sets the default values.
  CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'eu_bank_transfer'] = (node) => euBankTransfer = node.getObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer>(
        CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer
            .createFromDiscriminatorValue);
    deserializerMap[
        'gb_bank_transfer'] = (node) => gbBankTransfer = node.getObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer>(
        CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer
            .createFromDiscriminatorValue);
    deserializerMap[
        'jp_bank_transfer'] = (node) => jpBankTransfer = node.getObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceJpBankTransfer>(
        CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceJpBankTransfer
            .createFromDiscriminatorValue);
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType>(
        (stringValue) =>
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'us_bank_transfer'] = (node) => usBankTransfer = node.getObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceUsBankTransfer>(
        CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceUsBankTransfer
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer>(
        'eu_bank_transfer', euBankTransfer);
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer>(
        'gb_bank_transfer', gbBankTransfer);
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceJpBankTransfer>(
        'jp_bank_transfer', jpBankTransfer);
    writer.writeStringValue('reference', reference);
    writer.writeEnumValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceUsBankTransfer>(
        'us_bank_transfer', usBankTransfer);
    writer.writeAdditionalData(additionalData);
  }
}
