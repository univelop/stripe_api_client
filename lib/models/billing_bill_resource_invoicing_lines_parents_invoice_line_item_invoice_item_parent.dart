// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_bill_resource_invoicing_lines_common_proration_details.dart';

/// auto generated
class BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The invoice item that generated this line item
  String? invoiceItem;

  ///  Whether this is a proration
  bool? proration;

  ///  Additional details for proration line items
  BillingBillResourceInvoicingLinesCommonProrationDetails? prorationDetails;

  ///  The subscription that the invoice item belongs to
  String? subscription;

  /// Instantiates a new [BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent] and sets the default values.
  BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['invoice_item'] =
        (node) => invoiceItem = node.getStringValue();
    deserializerMap['proration'] = (node) => proration = node.getBoolValue();
    deserializerMap['proration_details'] = (node) => prorationDetails =
        node.getObjectValue<
                BillingBillResourceInvoicingLinesCommonProrationDetails>(
            BillingBillResourceInvoicingLinesCommonProrationDetails
                .createFromDiscriminatorValue);
    deserializerMap['subscription'] =
        (node) => subscription = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('invoice_item', invoiceItem);
    writer.writeBoolValue('proration', value: proration);
    writer.writeObjectValue<
            BillingBillResourceInvoicingLinesCommonProrationDetails>(
        'proration_details', prorationDetails);
    writer.writeStringValue('subscription', subscription);
    writer.writeAdditionalData(additionalData);
  }
}
