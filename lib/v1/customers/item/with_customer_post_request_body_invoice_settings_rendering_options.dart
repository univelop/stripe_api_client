// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_customer_post_request_body_invoice_settings_rendering_options_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithCustomerPostRequestBodyInvoiceSettingsRenderingOptionsMember1]
class WithCustomerPostRequestBodyInvoiceSettingsRenderingOptions
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithCustomerPostRequestBodyInvoiceSettingsRenderingOptionsMember1]
  WithCustomerPostRequestBodyInvoiceSettingsRenderingOptionsMember1?
      withCustomerPostRequestBodyInvoiceSettingsRenderingOptionsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCustomerPostRequestBodyInvoiceSettingsRenderingOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithCustomerPostRequestBodyInvoiceSettingsRenderingOptions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withCustomerPostRequestBodyInvoiceSettingsRenderingOptionsMember1 =
          WithCustomerPostRequestBodyInvoiceSettingsRenderingOptionsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withCustomerPostRequestBodyInvoiceSettingsRenderingOptionsMember1 !=
        null) {
      withCustomerPostRequestBodyInvoiceSettingsRenderingOptionsMember1!
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
              WithCustomerPostRequestBodyInvoiceSettingsRenderingOptionsMember1>(
          null,
          withCustomerPostRequestBodyInvoiceSettingsRenderingOptionsMember1);
    }
  }
}
