// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_invoice_creation_invoice_data_rendering_options_member1.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1], [String?]
class PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions
    implements Parsable {
  ///  Composed type representation for type [PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1]
  PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1?
      paymentLinksPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.paymentLinksPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1 =
          PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentLinksPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1 !=
        null) {
      paymentLinksPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1!
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
      writer.writeObjectValue<
              PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1>(
          null,
          paymentLinksPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1);
    }
  }
}
