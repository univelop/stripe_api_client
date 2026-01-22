// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_custom_fields_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithInvoicePostRequestBodyCustomFieldsMember1>], [String?]
class WithInvoicePostRequestBodyCustomFields implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithInvoicePostRequestBodyCustomFieldsMember1>]
  Iterable<WithInvoicePostRequestBodyCustomFieldsMember1>?
      withInvoicePostRequestBodyCustomFieldsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyCustomFields createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = WithInvoicePostRequestBodyCustomFields();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithInvoicePostRequestBodyCustomFieldsMember1>(
            WithInvoicePostRequestBodyCustomFieldsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withInvoicePostRequestBodyCustomFieldsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithInvoicePostRequestBodyCustomFieldsMember1>(
              WithInvoicePostRequestBodyCustomFieldsMember1
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
    } else if (withInvoicePostRequestBodyCustomFieldsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              WithInvoicePostRequestBodyCustomFieldsMember1>(
          null, withInvoicePostRequestBodyCustomFieldsMember1);
    }
  }
}
