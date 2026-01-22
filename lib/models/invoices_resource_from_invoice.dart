// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_resource_from_invoice_invoice.dart';

/// auto generated
class InvoicesResourceFromInvoice implements AdditionalDataHolder, Parsable {
  ///  The relation between this invoice and the cloned invoice
  String? action;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The invoice that was cloned.
  InvoicesResourceFromInvoiceInvoice? invoice;

  /// Instantiates a new [InvoicesResourceFromInvoice] and sets the default values.
  InvoicesResourceFromInvoice() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesResourceFromInvoice createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicesResourceFromInvoice();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['action'] = (node) => action = node.getStringValue();
    deserializerMap['invoice'] = (node) => invoice =
        node.getObjectValue<InvoicesResourceFromInvoiceInvoice>(
            InvoicesResourceFromInvoiceInvoice.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('action', action);
    writer.writeObjectValue<InvoicesResourceFromInvoiceInvoice>(
        'invoice', invoice);
    writer.writeAdditionalData(additionalData);
  }
}
