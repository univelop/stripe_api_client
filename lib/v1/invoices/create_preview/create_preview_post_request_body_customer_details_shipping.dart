// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_customer_details_shipping_member1.dart';

/// auto generated
/// Composed type wrapper for classes [CreatePreviewPostRequestBodyCustomerDetailsShippingMember1], [String?]
class CreatePreviewPostRequestBodyCustomerDetailsShipping implements Parsable {
  ///  Composed type representation for type [CreatePreviewPostRequestBodyCustomerDetailsShippingMember1]
  CreatePreviewPostRequestBodyCustomerDetailsShippingMember1?
      createPreviewPostRequestBodyCustomerDetailsShippingMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyCustomerDetailsShipping
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = CreatePreviewPostRequestBodyCustomerDetailsShipping();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.createPreviewPostRequestBodyCustomerDetailsShippingMember1 =
          CreatePreviewPostRequestBodyCustomerDetailsShippingMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (createPreviewPostRequestBodyCustomerDetailsShippingMember1 != null) {
      createPreviewPostRequestBodyCustomerDetailsShippingMember1!
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
              CreatePreviewPostRequestBodyCustomerDetailsShippingMember1>(
          null, createPreviewPostRequestBodyCustomerDetailsShippingMember1);
    }
  }
}
