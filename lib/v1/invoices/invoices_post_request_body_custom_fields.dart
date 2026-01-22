// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_custom_fields_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<InvoicesPostRequestBodyCustomFieldsMember1>], [String?]
class InvoicesPostRequestBodyCustomFields implements Parsable {
  ///  Composed type representation for type [Iterable<InvoicesPostRequestBodyCustomFieldsMember1>]
  Iterable<InvoicesPostRequestBodyCustomFieldsMember1>?
      invoicesPostRequestBodyCustomFieldsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyCustomFields createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = InvoicesPostRequestBodyCustomFields();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                InvoicesPostRequestBodyCustomFieldsMember1>(
            InvoicesPostRequestBodyCustomFieldsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.invoicesPostRequestBodyCustomFieldsMember1 =
          parseNode.getCollectionOfObjectValues<
                  InvoicesPostRequestBodyCustomFieldsMember1>(
              InvoicesPostRequestBodyCustomFieldsMember1
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
    } else if (invoicesPostRequestBodyCustomFieldsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              InvoicesPostRequestBodyCustomFieldsMember1>(
          null, invoicesPostRequestBodyCustomFieldsMember1);
    }
  }
}
