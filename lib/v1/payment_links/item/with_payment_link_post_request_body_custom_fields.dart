// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_custom_fields_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithPaymentLinkPostRequestBodyCustomFieldsMember1>], [String?]
class WithPaymentLinkPostRequestBodyCustomFields implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithPaymentLinkPostRequestBodyCustomFieldsMember1>]
  Iterable<WithPaymentLinkPostRequestBodyCustomFieldsMember1>?
      withPaymentLinkPostRequestBodyCustomFieldsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyCustomFields
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithPaymentLinkPostRequestBodyCustomFields();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithPaymentLinkPostRequestBodyCustomFieldsMember1>(
            WithPaymentLinkPostRequestBodyCustomFieldsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withPaymentLinkPostRequestBodyCustomFieldsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithPaymentLinkPostRequestBodyCustomFieldsMember1>(
              WithPaymentLinkPostRequestBodyCustomFieldsMember1
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
    } else if (withPaymentLinkPostRequestBodyCustomFieldsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              WithPaymentLinkPostRequestBodyCustomFieldsMember1>(
          null, withPaymentLinkPostRequestBodyCustomFieldsMember1);
    }
  }
}
