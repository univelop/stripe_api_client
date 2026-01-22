// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoiceitems_post_request_body_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<InvoiceitemsPostRequestBodyDiscountsMember1>], [String?]
class InvoiceitemsPostRequestBodyDiscounts implements Parsable {
  ///  Composed type representation for type [Iterable<InvoiceitemsPostRequestBodyDiscountsMember1>]
  Iterable<InvoiceitemsPostRequestBodyDiscountsMember1>?
      invoiceitemsPostRequestBodyDiscountsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoiceitemsPostRequestBodyDiscounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = InvoiceitemsPostRequestBodyDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                InvoiceitemsPostRequestBodyDiscountsMember1>(
            InvoiceitemsPostRequestBodyDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.invoiceitemsPostRequestBodyDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  InvoiceitemsPostRequestBodyDiscountsMember1>(
              InvoiceitemsPostRequestBodyDiscountsMember1
                  .createFromDiscriminatorValue);
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else if (invoiceitemsPostRequestBodyDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              InvoiceitemsPostRequestBodyDiscountsMember1>(
          null, invoiceitemsPostRequestBodyDiscountsMember1);
    }
  }
}
