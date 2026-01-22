// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoiceitem_post_request_body_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithInvoiceitemPostRequestBodyDiscountsMember1>], [String?]
class WithInvoiceitemPostRequestBodyDiscounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithInvoiceitemPostRequestBodyDiscountsMember1>]
  Iterable<WithInvoiceitemPostRequestBodyDiscountsMember1>?
      withInvoiceitemPostRequestBodyDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoiceitemPostRequestBodyDiscounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = WithInvoiceitemPostRequestBodyDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithInvoiceitemPostRequestBodyDiscountsMember1>(
            WithInvoiceitemPostRequestBodyDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withInvoiceitemPostRequestBodyDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithInvoiceitemPostRequestBodyDiscountsMember1>(
              WithInvoiceitemPostRequestBodyDiscountsMember1
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
    } else if (withInvoiceitemPostRequestBodyDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              WithInvoiceitemPostRequestBodyDiscountsMember1>(
          null, withInvoiceitemPostRequestBodyDiscountsMember1);
    }
  }
}
