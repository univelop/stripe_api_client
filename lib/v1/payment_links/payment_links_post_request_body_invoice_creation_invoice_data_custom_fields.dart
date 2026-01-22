// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_invoice_creation_invoice_data_custom_fields_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>], [String?]
class PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFields
    implements Parsable {
  ///  Composed type representation for type [Iterable<PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>]
  Iterable<
          PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>?
      paymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFields
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFields();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>(
            PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.paymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1 =
          parseNode.getCollectionOfObjectValues<
                  PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>(
              PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1
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
    } else if (paymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>(
          null,
          paymentLinksPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1);
    }
  }
}
