// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_balance_resource_cash_balance_transaction_resource_transferred_to_balance_balance_transaction.dart';

/// auto generated
class CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The [Balance Transaction](https://docs.stripe.com/api/balance_transactions/object) that corresponds to funds transferred to your Stripe balance.
  CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalanceBalanceTransaction?
      balanceTransaction;

  /// Instantiates a new [CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance] and sets the default values.
  CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'balance_transaction'] = (node) => balanceTransaction = node.getObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalanceBalanceTransaction>(
        CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalanceBalanceTransaction
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalanceBalanceTransaction>(
        'balance_transaction', balanceTransaction);
    writer.writeAdditionalData(additionalData);
  }
}
