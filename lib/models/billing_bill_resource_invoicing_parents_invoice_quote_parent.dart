// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class BillingBillResourceInvoicingParentsInvoiceQuoteParent
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The quote that generated this invoice
  String? quote;

  /// Instantiates a new [BillingBillResourceInvoicingParentsInvoiceQuoteParent] and sets the default values.
  BillingBillResourceInvoicingParentsInvoiceQuoteParent() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingBillResourceInvoicingParentsInvoiceQuoteParent
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingBillResourceInvoicingParentsInvoiceQuoteParent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['quote'] = (node) => quote = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('quote', quote);
    writer.writeAdditionalData(additionalData);
  }
}
