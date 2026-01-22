// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_name_collection_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithPaymentLinkPostRequestBodyNameCollectionMember1]
class WithPaymentLinkPostRequestBodyNameCollection implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithPaymentLinkPostRequestBodyNameCollectionMember1]
  WithPaymentLinkPostRequestBodyNameCollectionMember1?
      withPaymentLinkPostRequestBodyNameCollectionMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyNameCollection
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithPaymentLinkPostRequestBodyNameCollection();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withPaymentLinkPostRequestBodyNameCollectionMember1 =
          WithPaymentLinkPostRequestBodyNameCollectionMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withPaymentLinkPostRequestBodyNameCollectionMember1 != null) {
      withPaymentLinkPostRequestBodyNameCollectionMember1!
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
              WithPaymentLinkPostRequestBodyNameCollectionMember1>(
          null, withPaymentLinkPostRequestBodyNameCollectionMember1);
    }
  }
}
