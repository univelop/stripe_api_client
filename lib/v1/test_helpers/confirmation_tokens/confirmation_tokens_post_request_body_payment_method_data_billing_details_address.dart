// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens_post_request_body_payment_method_data_billing_details_address_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1], [String?]
class ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddress
    implements Parsable {
  ///  Composed type representation for type [ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1]
  ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1?
      confirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddress
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddress();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.confirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1 =
          ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (confirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1 !=
        null) {
      confirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1!
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
              ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1>(
          null,
          confirmationTokensPostRequestBodyPaymentMethodDataBillingDetailsAddressMember1);
    }
  }
}
