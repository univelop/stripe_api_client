// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_data_billing_details_address_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ConfirmPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1], [String?]
class ConfirmPostRequestBodyPaymentMethodDataBillingDetailsAddress
    implements Parsable {
  ///  Composed type representation for type [ConfirmPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1]
  ConfirmPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1?
      confirmPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodDataBillingDetailsAddress
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = ConfirmPostRequestBodyPaymentMethodDataBillingDetailsAddress();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.confirmPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1 =
          ConfirmPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (confirmPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1 !=
        null) {
      confirmPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1!
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
              ConfirmPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1>(
          null,
          confirmPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1);
    }
  }
}
