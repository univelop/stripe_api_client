// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './set_reader_display_post_request_body_cart.dart';
import './set_reader_display_post_request_body_type.dart';

/// auto generated
class SetReaderDisplayPostRequestBody implements Parsable {
  ///  Cart details to display on the reader screen, including line items, amounts, and currency.
  SetReaderDisplayPostRequestBodyCart? cart;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Type of information to display. Only `cart` is currently supported.
  SetReaderDisplayPostRequestBodyType? type_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetReaderDisplayPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SetReaderDisplayPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cart'] = (node) => cart =
        node.getObjectValue<SetReaderDisplayPostRequestBodyCart>(
            SetReaderDisplayPostRequestBodyCart.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<SetReaderDisplayPostRequestBodyType>((stringValue) =>
            SetReaderDisplayPostRequestBodyType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SetReaderDisplayPostRequestBodyCart>('cart', cart);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeEnumValue<SetReaderDisplayPostRequestBodyType>(
        'type', type_, (e) => e?.value);
  }
}
