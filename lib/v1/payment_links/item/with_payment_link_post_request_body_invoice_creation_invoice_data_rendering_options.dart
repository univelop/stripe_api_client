// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_invoice_creation_invoice_data_rendering_options_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1]
class WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1]
  WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1?
      withPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1 =
          WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1 !=
        null) {
      withPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1!
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
              WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1>(
          null,
          withPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1);
    }
  }
}
