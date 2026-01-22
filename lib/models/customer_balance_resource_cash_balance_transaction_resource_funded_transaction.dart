// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_balance_resource_cash_balance_transaction_resource_funded_transaction_resource_bank_transfer.dart';

/// auto generated
class CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_transfer property
  CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer?
      bankTransfer;

  /// Instantiates a new [CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction] and sets the default values.
  CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'bank_transfer'] = (node) => bankTransfer = node.getObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer>(
        CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer>(
        'bank_transfer', bankTransfer);
    writer.writeAdditionalData(additionalData);
  }
}
