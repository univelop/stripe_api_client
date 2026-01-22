// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './calculations_post_request_body_line_items_metadata.dart';
import './calculations_post_request_body_line_items_tax_behavior.dart';

/// auto generated
class CalculationsPostRequestBodyLineItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The metadata property
  CalculationsPostRequestBodyLineItemsMetadata? metadata;

  ///  The product property
  String? product;

  ///  The quantity property
  int? quantity;

  ///  The reference property
  String? reference;

  ///  The tax_behavior property
  CalculationsPostRequestBodyLineItemsTaxBehavior? taxBehavior;

  ///  The tax_code property
  String? taxCode;

  /// Instantiates a new [CalculationsPostRequestBodyLineItems] and sets the default values.
  CalculationsPostRequestBodyLineItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CalculationsPostRequestBodyLineItems createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CalculationsPostRequestBodyLineItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CalculationsPostRequestBodyLineItemsMetadata>(
            CalculationsPostRequestBodyLineItemsMetadata
                .createFromDiscriminatorValue);
    deserializerMap['product'] = (node) => product = node.getStringValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<CalculationsPostRequestBodyLineItemsTaxBehavior>(
            (stringValue) => CalculationsPostRequestBodyLineItemsTaxBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_code'] = (node) => taxCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<CalculationsPostRequestBodyLineItemsMetadata>(
        'metadata', metadata);
    writer.writeStringValue('product', product);
    writer.writeIntValue('quantity', quantity);
    writer.writeStringValue('reference', reference);
    writer.writeEnumValue<CalculationsPostRequestBodyLineItemsTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeStringValue('tax_code', taxCode);
    writer.writeAdditionalData(additionalData);
  }
}
