// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_nz_bank_account_member1.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccountMember1], [String?]
class PaymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccount
    implements Parsable {
  ///  Composed type representation for type [PaymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccountMember1]
  PaymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccountMember1?
      paymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccountMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        PaymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccount();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.paymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccountMember1 =
          PaymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccountMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccountMember1 !=
        null) {
      paymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccountMember1!
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
              PaymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccountMember1>(
          null,
          paymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccountMember1);
    }
  }
}
