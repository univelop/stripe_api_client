// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_bill_resource_invoicing_lines_common_credited_items.dart';

/// auto generated
class BillingBillResourceInvoicingLinesCommonProrationDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  For a credit proration `line_item`, the original debit line_items to which the credit proration applies.
  BillingBillResourceInvoicingLinesCommonCreditedItems? creditedItems;

  /// Instantiates a new [BillingBillResourceInvoicingLinesCommonProrationDetails] and sets the default values.
  BillingBillResourceInvoicingLinesCommonProrationDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingBillResourceInvoicingLinesCommonProrationDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingBillResourceInvoicingLinesCommonProrationDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['credited_items'] = (node) => creditedItems = node
        .getObjectValue<BillingBillResourceInvoicingLinesCommonCreditedItems>(
            BillingBillResourceInvoicingLinesCommonCreditedItems
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<BillingBillResourceInvoicingLinesCommonCreditedItems>(
            'credited_items', creditedItems);
    writer.writeAdditionalData(additionalData);
  }
}
