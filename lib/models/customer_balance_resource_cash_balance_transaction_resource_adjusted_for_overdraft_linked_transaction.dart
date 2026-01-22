// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_cash_balance_transaction.dart';

/// auto generated
/// Composed type wrapper for classes [CustomerCashBalanceTransaction], [String?]
class CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction
    implements Parsable {
  ///  Composed type representation for type [CustomerCashBalanceTransaction]
  CustomerCashBalanceTransaction? customerCashBalanceTransaction;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.customerCashBalanceTransaction = CustomerCashBalanceTransaction();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (customerCashBalanceTransaction != null) {
      customerCashBalanceTransaction!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<CustomerCashBalanceTransaction>(
          null, customerCashBalanceTransaction);
    }
  }
}
