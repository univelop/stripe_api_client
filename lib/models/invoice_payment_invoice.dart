// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './deleted_invoice.dart';
import './invoice.dart';

/// auto generated
/// Composed type wrapper for classes [DeletedInvoice], [Invoice], [String?]
class InvoicePaymentInvoice implements Parsable {
  ///  Composed type representation for type [DeletedInvoice]
  DeletedInvoice? deletedInvoice;

  ///  Composed type representation for type [Invoice]
  Invoice? invoice;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicePaymentInvoice createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = InvoicePaymentInvoice();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.deletedInvoice = DeletedInvoice();
      result.invoice = Invoice();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (deletedInvoice != null) {
      deletedInvoice!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (invoice != null) {
      invoice!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<DeletedInvoice>(null, deletedInvoice, [invoice]);
    }
  }
}
