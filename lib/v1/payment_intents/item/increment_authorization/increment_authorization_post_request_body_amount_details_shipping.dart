// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './increment_authorization_post_request_body_amount_details_shipping_member1.dart';

/// auto generated
/// Composed type wrapper for classes [IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1], [String?]
class IncrementAuthorizationPostRequestBodyAmountDetailsShipping
    implements Parsable {
  ///  Composed type representation for type [IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1]
  IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1?
      incrementAuthorizationPostRequestBodyAmountDetailsShippingMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IncrementAuthorizationPostRequestBodyAmountDetailsShipping
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = IncrementAuthorizationPostRequestBodyAmountDetailsShipping();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.incrementAuthorizationPostRequestBodyAmountDetailsShippingMember1 =
          IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (incrementAuthorizationPostRequestBodyAmountDetailsShippingMember1 !=
        null) {
      incrementAuthorizationPostRequestBodyAmountDetailsShippingMember1!
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
              IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1>(
          null,
          incrementAuthorizationPostRequestBodyAmountDetailsShippingMember1);
    }
  }
}
