// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_custom_text_submit_member1.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentLinksPostRequestBodyCustomTextSubmitMember1], [String?]
class PaymentLinksPostRequestBodyCustomTextSubmit implements Parsable {
  ///  Composed type representation for type [PaymentLinksPostRequestBodyCustomTextSubmitMember1]
  PaymentLinksPostRequestBodyCustomTextSubmitMember1?
      paymentLinksPostRequestBodyCustomTextSubmitMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyCustomTextSubmit
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = PaymentLinksPostRequestBodyCustomTextSubmit();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.paymentLinksPostRequestBodyCustomTextSubmitMember1 =
          PaymentLinksPostRequestBodyCustomTextSubmitMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentLinksPostRequestBodyCustomTextSubmitMember1 != null) {
      paymentLinksPostRequestBodyCustomTextSubmitMember1!
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
      writer
          .writeObjectValue<PaymentLinksPostRequestBodyCustomTextSubmitMember1>(
              null, paymentLinksPostRequestBodyCustomTextSubmitMember1);
    }
  }
}
