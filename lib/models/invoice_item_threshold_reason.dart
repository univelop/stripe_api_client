// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class InvoiceItemThresholdReason implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The IDs of the line items that triggered the threshold invoice.
  Iterable<String>? lineItemIds;

  ///  The quantity threshold boundary that applied to the given line item.
  int? usageGte;

  /// Instantiates a new [InvoiceItemThresholdReason] and sets the default values.
  InvoiceItemThresholdReason() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoiceItemThresholdReason createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoiceItemThresholdReason();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['line_item_ids'] =
        (node) => lineItemIds = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['usage_gte'] = (node) => usageGte = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>(
        'line_item_ids', lineItemIds);
    writer.writeIntValue('usage_gte', usageGte);
    writer.writeAdditionalData(additionalData);
  }
}
