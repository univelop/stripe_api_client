// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_invoice_creation_invoice_data_custom_fields_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>], [String?]
class SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFields
    implements Parsable {
  ///  Composed type representation for type [Iterable<SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>]
  Iterable<
          SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>?
      sessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFields
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFields();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>(
            SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.sessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1 =
          parseNode.getCollectionOfObjectValues<
                  SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>(
              SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1
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
    } else if (sessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1>(
          null,
          sessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFieldsMember1);
    }
  }
}
