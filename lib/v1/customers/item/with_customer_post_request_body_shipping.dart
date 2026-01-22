// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_customer_post_request_body_shipping_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithCustomerPostRequestBodyShippingMember1]
class WithCustomerPostRequestBodyShipping implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithCustomerPostRequestBodyShippingMember1]
  WithCustomerPostRequestBodyShippingMember1?
      withCustomerPostRequestBodyShippingMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCustomerPostRequestBodyShipping createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = WithCustomerPostRequestBodyShipping();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withCustomerPostRequestBodyShippingMember1 =
          WithCustomerPostRequestBodyShippingMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withCustomerPostRequestBodyShippingMember1 != null) {
      withCustomerPostRequestBodyShippingMember1!
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
      writer.writeObjectValue<WithCustomerPostRequestBodyShippingMember1>(
          null, withCustomerPostRequestBodyShippingMember1);
    }
  }
}
