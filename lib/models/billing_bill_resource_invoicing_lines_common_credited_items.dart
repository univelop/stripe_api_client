// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class BillingBillResourceInvoicingLinesCommonCreditedItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Invoice containing the credited invoice line items
  String? invoice;

  ///  Credited invoice line items
  Iterable<String>? invoiceLineItems;

  /// Instantiates a new [BillingBillResourceInvoicingLinesCommonCreditedItems] and sets the default values.
  BillingBillResourceInvoicingLinesCommonCreditedItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingBillResourceInvoicingLinesCommonCreditedItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingBillResourceInvoicingLinesCommonCreditedItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['invoice'] = (node) => invoice = node.getStringValue();
    deserializerMap['invoice_line_items'] = (node) =>
        invoiceLineItems = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('invoice', invoice);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'invoice_line_items', invoiceLineItems);
    writer.writeAdditionalData(additionalData);
  }
}
