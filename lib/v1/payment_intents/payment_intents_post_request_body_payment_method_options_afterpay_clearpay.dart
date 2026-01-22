// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_afterpay_clearpay_member1.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1], [String?]
class PaymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpay
    implements Parsable {
  ///  Composed type representation for type [PaymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1]
  PaymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1?
      paymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpay
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        PaymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpay();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.paymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1 =
          PaymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1 !=
        null) {
      paymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1!
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
              PaymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1>(
          null,
          paymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1);
    }
  }
}
