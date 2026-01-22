// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_invoice_creation_invoice_data_custom_fields_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>], [String?]
class WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFields
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>]
  Iterable<
          WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>?
      withPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFields
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFields();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>(
            WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>(
              WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1
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
    } else if (withPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>(
          null,
          withPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1);
    }
  }
}
