// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_afterpay_clearpay_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ConfirmPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1], [String?]
class ConfirmPostRequestBodyPaymentMethodOptionsAfterpayClearpay
    implements Parsable {
  ///  Composed type representation for type [ConfirmPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1]
  ConfirmPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1?
      confirmPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsAfterpayClearpay
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = ConfirmPostRequestBodyPaymentMethodOptionsAfterpayClearpay();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.confirmPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1 =
          ConfirmPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (confirmPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1 !=
        null) {
      confirmPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1!
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
              ConfirmPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1>(
          null,
          confirmPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1);
    }
  }
}
