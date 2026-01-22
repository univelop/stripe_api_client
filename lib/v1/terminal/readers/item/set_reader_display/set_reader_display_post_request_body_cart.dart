// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './set_reader_display_post_request_body_cart_line_items.dart';

/// auto generated
/// Cart details to display on the reader screen, including line items, amounts, and currency.
class SetReaderDisplayPostRequestBodyCart
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency property
  String? currency;

  ///  The line_items property
  Iterable<SetReaderDisplayPostRequestBodyCartLineItems>? lineItems;

  ///  The tax property
  int? tax;

  ///  The total property
  int? total;

  /// Instantiates a new [SetReaderDisplayPostRequestBodyCart] and sets the default values.
  SetReaderDisplayPostRequestBodyCart() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetReaderDisplayPostRequestBodyCart createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SetReaderDisplayPostRequestBodyCart();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['line_items'] = (node) => lineItems =
        node.getCollectionOfObjectValues<
                SetReaderDisplayPostRequestBodyCartLineItems>(
            SetReaderDisplayPostRequestBodyCartLineItems
                .createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax = node.getIntValue();
    deserializerMap['total'] = (node) => total = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('currency', currency);
    writer.writeCollectionOfObjectValues<
        SetReaderDisplayPostRequestBodyCartLineItems>('line_items', lineItems);
    writer.writeIntValue('tax', tax);
    writer.writeIntValue('total', total);
    writer.writeAdditionalData(additionalData);
  }
}
