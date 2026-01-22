// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customers_post_request_body_invoice_settings_rendering_options_member1.dart';

/// auto generated
/// Composed type wrapper for classes [CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1], [String?]
class CustomersPostRequestBodyInvoiceSettingsRenderingOptions
    implements Parsable {
  ///  Composed type representation for type [CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1]
  CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1?
      customersPostRequestBodyInvoiceSettingsRenderingOptionsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomersPostRequestBodyInvoiceSettingsRenderingOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = CustomersPostRequestBodyInvoiceSettingsRenderingOptions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.customersPostRequestBodyInvoiceSettingsRenderingOptionsMember1 =
          CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (customersPostRequestBodyInvoiceSettingsRenderingOptionsMember1 !=
        null) {
      customersPostRequestBodyInvoiceSettingsRenderingOptionsMember1!
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
              CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1>(
          null, customersPostRequestBodyInvoiceSettingsRenderingOptionsMember1);
    }
  }
}
