// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_amazon_pay_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ConfirmPostRequestBodyPaymentMethodOptionsAmazonPayMember1], [String?]
class ConfirmPostRequestBodyPaymentMethodOptionsAmazonPay implements Parsable {
  ///  Composed type representation for type [ConfirmPostRequestBodyPaymentMethodOptionsAmazonPayMember1]
  ConfirmPostRequestBodyPaymentMethodOptionsAmazonPayMember1?
      confirmPostRequestBodyPaymentMethodOptionsAmazonPayMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsAmazonPay
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = ConfirmPostRequestBodyPaymentMethodOptionsAmazonPay();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.confirmPostRequestBodyPaymentMethodOptionsAmazonPayMember1 =
          ConfirmPostRequestBodyPaymentMethodOptionsAmazonPayMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (confirmPostRequestBodyPaymentMethodOptionsAmazonPayMember1 != null) {
      confirmPostRequestBodyPaymentMethodOptionsAmazonPayMember1!
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
              ConfirmPostRequestBodyPaymentMethodOptionsAmazonPayMember1>(
          null, confirmPostRequestBodyPaymentMethodOptionsAmazonPayMember1);
    }
  }
}
