// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_balance_resource_cash_balance_transaction_resource_refunded_from_payment_transaction_refund.dart';

/// auto generated
class CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The [Refund](https://docs.stripe.com/api/refunds/object) that moved these funds into the customer's cash balance.
  CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransactionRefund?
      refund;

  /// Instantiates a new [CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction] and sets the default values.
  CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['refund'] = (node) => refund = node.getObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransactionRefund>(
        CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransactionRefund
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransactionRefund>(
        'refund', refund);
    writer.writeAdditionalData(additionalData);
  }
}
