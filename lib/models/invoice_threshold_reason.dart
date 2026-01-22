// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_item_threshold_reason.dart';

/// auto generated
class InvoiceThresholdReason implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The total invoice amount threshold boundary if it triggered the threshold invoice.
  int? amountGte;

  ///  Indicates which line items triggered a threshold invoice.
  Iterable<InvoiceItemThresholdReason>? itemReasons;

  /// Instantiates a new [InvoiceThresholdReason] and sets the default values.
  InvoiceThresholdReason() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoiceThresholdReason createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoiceThresholdReason();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_gte'] = (node) => amountGte = node.getIntValue();
    deserializerMap['item_reasons'] = (node) => itemReasons =
        node.getCollectionOfObjectValues<InvoiceItemThresholdReason>(
            InvoiceItemThresholdReason.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_gte', amountGte);
    writer.writeCollectionOfObjectValues<InvoiceItemThresholdReason>(
        'item_reasons', itemReasons);
    writer.writeAdditionalData(additionalData);
  }
}
