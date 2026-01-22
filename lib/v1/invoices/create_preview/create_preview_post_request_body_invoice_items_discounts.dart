// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_invoice_items_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<CreatePreviewPostRequestBodyInvoiceItemsDiscountsMember1>], [String?]
class CreatePreviewPostRequestBodyInvoiceItemsDiscounts implements Parsable {
  ///  Composed type representation for type [Iterable<CreatePreviewPostRequestBodyInvoiceItemsDiscountsMember1>]
  Iterable<CreatePreviewPostRequestBodyInvoiceItemsDiscountsMember1>?
      createPreviewPostRequestBodyInvoiceItemsDiscountsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyInvoiceItemsDiscounts
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = CreatePreviewPostRequestBodyInvoiceItemsDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                CreatePreviewPostRequestBodyInvoiceItemsDiscountsMember1>(
            CreatePreviewPostRequestBodyInvoiceItemsDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.createPreviewPostRequestBodyInvoiceItemsDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  CreatePreviewPostRequestBodyInvoiceItemsDiscountsMember1>(
              CreatePreviewPostRequestBodyInvoiceItemsDiscountsMember1
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
    } else if (createPreviewPostRequestBodyInvoiceItemsDiscountsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              CreatePreviewPostRequestBodyInvoiceItemsDiscountsMember1>(
          null, createPreviewPostRequestBodyInvoiceItemsDiscountsMember1);
    }
  }
}
