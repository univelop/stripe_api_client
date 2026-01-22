// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './shipping.dart';
import './source_order_item.dart';

/// auto generated
class SourceOrder implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount for the order.
  int? amount;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The email address of the customer placing the order.
  String? email;

  ///  List of items constituting the order.
  Iterable<SourceOrderItem>? items;

  ///  The shipping property
  Shipping? shipping;

  /// Instantiates a new [SourceOrder] and sets the default values.
  SourceOrder() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceOrder createFromDiscriminatorValue(ParseNode parseNode) {
    return SourceOrder();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['items'] = (node) => items =
        node.getCollectionOfObjectValues<SourceOrderItem>(
            SourceOrderItem.createFromDiscriminatorValue);
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<Shipping>(Shipping.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('email', email);
    writer.writeCollectionOfObjectValues<SourceOrderItem>('items', items);
    writer.writeObjectValue<Shipping>('shipping', shipping);
    writer.writeAdditionalData(additionalData);
  }
}
