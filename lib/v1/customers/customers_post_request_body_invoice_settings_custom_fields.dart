// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customers_post_request_body_invoice_settings_custom_fields_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<CustomersPostRequestBodyInvoiceSettingsCustomFieldsMember1>], [String?]
class CustomersPostRequestBodyInvoiceSettingsCustomFields implements Parsable {
  ///  Composed type representation for type [Iterable<CustomersPostRequestBodyInvoiceSettingsCustomFieldsMember1>]
  Iterable<CustomersPostRequestBodyInvoiceSettingsCustomFieldsMember1>?
      customersPostRequestBodyInvoiceSettingsCustomFieldsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomersPostRequestBodyInvoiceSettingsCustomFields
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = CustomersPostRequestBodyInvoiceSettingsCustomFields();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                CustomersPostRequestBodyInvoiceSettingsCustomFieldsMember1>(
            CustomersPostRequestBodyInvoiceSettingsCustomFieldsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.customersPostRequestBodyInvoiceSettingsCustomFieldsMember1 =
          parseNode.getCollectionOfObjectValues<
                  CustomersPostRequestBodyInvoiceSettingsCustomFieldsMember1>(
              CustomersPostRequestBodyInvoiceSettingsCustomFieldsMember1
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
    } else if (customersPostRequestBodyInvoiceSettingsCustomFieldsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              CustomersPostRequestBodyInvoiceSettingsCustomFieldsMember1>(
          null, customersPostRequestBodyInvoiceSettingsCustomFieldsMember1);
    }
  }
}
