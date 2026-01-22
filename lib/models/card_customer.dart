// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer.dart';
import './deleted_customer.dart';

/// auto generated
/// Composed type wrapper for classes [Customer], [DeletedCustomer], [String?]
class CardCustomer implements Parsable {
  ///  Composed type representation for type [Customer]
  Customer? customer;

  ///  Composed type representation for type [DeletedCustomer]
  DeletedCustomer? deletedCustomer;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardCustomer createFromDiscriminatorValue(ParseNode parseNode) {
    var result = CardCustomer();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.customer = Customer();
      result.deletedCustomer = DeletedCustomer();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (customer != null) {
      customer!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (deletedCustomer != null) {
      deletedCustomer!
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
      writer.writeObjectValue<Customer>(null, customer, [deletedCustomer]);
    }
  }
}
