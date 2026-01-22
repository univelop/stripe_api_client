// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_custom_text_submit_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithPaymentLinkPostRequestBodyCustomTextSubmitMember1]
class WithPaymentLinkPostRequestBodyCustomTextSubmit implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithPaymentLinkPostRequestBodyCustomTextSubmitMember1]
  WithPaymentLinkPostRequestBodyCustomTextSubmitMember1?
      withPaymentLinkPostRequestBodyCustomTextSubmitMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyCustomTextSubmit
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithPaymentLinkPostRequestBodyCustomTextSubmit();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withPaymentLinkPostRequestBodyCustomTextSubmitMember1 =
          WithPaymentLinkPostRequestBodyCustomTextSubmitMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withPaymentLinkPostRequestBodyCustomTextSubmitMember1 != null) {
      withPaymentLinkPostRequestBodyCustomTextSubmitMember1!
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
              WithPaymentLinkPostRequestBodyCustomTextSubmitMember1>(
          null, withPaymentLinkPostRequestBodyCustomTextSubmitMember1);
    }
  }
}
