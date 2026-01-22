// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_method_post_request_body_billing_details_address_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithPaymentMethodPostRequestBodyBillingDetailsAddressMember1]
class WithPaymentMethodPostRequestBodyBillingDetailsAddress
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithPaymentMethodPostRequestBodyBillingDetailsAddressMember1]
  WithPaymentMethodPostRequestBodyBillingDetailsAddressMember1?
      withPaymentMethodPostRequestBodyBillingDetailsAddressMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentMethodPostRequestBodyBillingDetailsAddress
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithPaymentMethodPostRequestBodyBillingDetailsAddress();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withPaymentMethodPostRequestBodyBillingDetailsAddressMember1 =
          WithPaymentMethodPostRequestBodyBillingDetailsAddressMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withPaymentMethodPostRequestBodyBillingDetailsAddressMember1 != null) {
      withPaymentMethodPostRequestBodyBillingDetailsAddressMember1!
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
              WithPaymentMethodPostRequestBodyBillingDetailsAddressMember1>(
          null, withPaymentMethodPostRequestBodyBillingDetailsAddressMember1);
    }
  }
}
