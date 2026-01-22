// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_from_invoice_action.dart';

/// auto generated
/// Revise an existing invoice. The new invoice will be created in `status=draft`. See the [revision documentation](https://docs.stripe.com/invoicing/invoice-revisions) for more details.
class InvoicesPostRequestBodyFromInvoice
    implements AdditionalDataHolder, Parsable {
  ///  The action property
  InvoicesPostRequestBodyFromInvoiceAction? action;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The invoice property
  String? invoice;

  /// Instantiates a new [InvoicesPostRequestBodyFromInvoice] and sets the default values.
  InvoicesPostRequestBodyFromInvoice() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyFromInvoice createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicesPostRequestBodyFromInvoice();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['action'] = (node) => action =
        node.getEnumValue<InvoicesPostRequestBodyFromInvoiceAction>(
            (stringValue) => InvoicesPostRequestBodyFromInvoiceAction.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['invoice'] = (node) => invoice = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<InvoicesPostRequestBodyFromInvoiceAction>(
        'action', action, (e) => e?.value);
    writer.writeStringValue('invoice', invoice);
    writer.writeAdditionalData(additionalData);
  }
}
