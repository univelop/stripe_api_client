// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './deleted_price.dart';
import './price.dart';

/// auto generated
/// Composed type wrapper for classes [DeletedPrice], [Price], [String?]
class SubscriptionScheduleAddInvoiceItemPrice implements Parsable {
  ///  Composed type representation for type [DeletedPrice]
  DeletedPrice? deletedPrice;

  ///  Composed type representation for type [Price]
  Price? price;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionScheduleAddInvoiceItemPrice createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = SubscriptionScheduleAddInvoiceItemPrice();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.deletedPrice = DeletedPrice();
      result.price = Price();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (deletedPrice != null) {
      deletedPrice!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (price != null) {
      price!
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
      writer.writeObjectValue<DeletedPrice>(null, deletedPrice, [price]);
    }
  }
}
