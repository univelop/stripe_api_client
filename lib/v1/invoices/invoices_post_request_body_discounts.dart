// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<InvoicesPostRequestBodyDiscountsMember1>], [String?]
class InvoicesPostRequestBodyDiscounts implements Parsable {
  ///  Composed type representation for type [Iterable<InvoicesPostRequestBodyDiscountsMember1>]
  Iterable<InvoicesPostRequestBodyDiscountsMember1>?
      invoicesPostRequestBodyDiscountsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyDiscounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = InvoicesPostRequestBodyDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<InvoicesPostRequestBodyDiscountsMember1>(
            InvoicesPostRequestBodyDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.invoicesPostRequestBodyDiscountsMember1 = parseNode
          .getCollectionOfObjectValues<InvoicesPostRequestBodyDiscountsMember1>(
              InvoicesPostRequestBodyDiscountsMember1
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
    } else if (invoicesPostRequestBodyDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              InvoicesPostRequestBodyDiscountsMember1>(
          null, invoicesPostRequestBodyDiscountsMember1);
    }
  }
}
