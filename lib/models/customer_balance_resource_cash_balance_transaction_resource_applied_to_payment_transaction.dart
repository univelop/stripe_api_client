// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_balance_resource_cash_balance_transaction_resource_applied_to_payment_transaction_payment_intent.dart';

/// auto generated
class CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The [Payment Intent](https://docs.stripe.com/api/payment_intents/object) that funds were applied to.
  CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransactionPaymentIntent?
      paymentIntent;

  /// Instantiates a new [CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction] and sets the default values.
  CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'payment_intent'] = (node) => paymentIntent = node.getObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransactionPaymentIntent>(
        CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransactionPaymentIntent
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransactionPaymentIntent>(
        'payment_intent', paymentIntent);
    writer.writeAdditionalData(additionalData);
  }
}
