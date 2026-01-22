// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_balance_resource_cash_balance_transaction_resource_adjusted_for_overdraft_balance_transaction.dart';
import './customer_balance_resource_cash_balance_transaction_resource_adjusted_for_overdraft_linked_transaction.dart';

/// auto generated
class CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraft
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The [Balance Transaction](https://docs.stripe.com/api/balance_transactions/object) that corresponds to funds taken out of your Stripe balance.
  CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftBalanceTransaction?
      balanceTransaction;

  ///  The [Cash Balance Transaction](https://docs.stripe.com/api/cash_balance_transactions/object) that brought the customer balance negative, triggering the clawback of funds.
  CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction?
      linkedTransaction;

  /// Instantiates a new [CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraft] and sets the default values.
  CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraft()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraft
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraft();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'balance_transaction'] = (node) => balanceTransaction = node.getObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftBalanceTransaction>(
        CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftBalanceTransaction
            .createFromDiscriminatorValue);
    deserializerMap[
        'linked_transaction'] = (node) => linkedTransaction = node.getObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction>(
        CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftBalanceTransaction>(
        'balance_transaction', balanceTransaction);
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction>(
        'linked_transaction', linkedTransaction);
    writer.writeAdditionalData(additionalData);
  }
}
