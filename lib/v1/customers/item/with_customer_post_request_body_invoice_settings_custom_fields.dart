// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_customer_post_request_body_invoice_settings_custom_fields_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithCustomerPostRequestBodyInvoiceSettingsCustomFieldsMember1>], [String?]
class WithCustomerPostRequestBodyInvoiceSettingsCustomFields
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithCustomerPostRequestBodyInvoiceSettingsCustomFieldsMember1>]
  Iterable<WithCustomerPostRequestBodyInvoiceSettingsCustomFieldsMember1>?
      withCustomerPostRequestBodyInvoiceSettingsCustomFieldsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCustomerPostRequestBodyInvoiceSettingsCustomFields
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithCustomerPostRequestBodyInvoiceSettingsCustomFields();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithCustomerPostRequestBodyInvoiceSettingsCustomFieldsMember1>(
            WithCustomerPostRequestBodyInvoiceSettingsCustomFieldsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withCustomerPostRequestBodyInvoiceSettingsCustomFieldsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithCustomerPostRequestBodyInvoiceSettingsCustomFieldsMember1>(
              WithCustomerPostRequestBodyInvoiceSettingsCustomFieldsMember1
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
    } else if (withCustomerPostRequestBodyInvoiceSettingsCustomFieldsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              WithCustomerPostRequestBodyInvoiceSettingsCustomFieldsMember1>(
          null, withCustomerPostRequestBodyInvoiceSettingsCustomFieldsMember1);
    }
  }
}
