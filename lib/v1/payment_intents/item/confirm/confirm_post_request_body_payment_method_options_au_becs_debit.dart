// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_au_becs_debit_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ConfirmPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1], [String?]
class ConfirmPostRequestBodyPaymentMethodOptionsAuBecsDebit
    implements Parsable {
  ///  Composed type representation for type [ConfirmPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1]
  ConfirmPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1?
      confirmPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsAuBecsDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = ConfirmPostRequestBodyPaymentMethodOptionsAuBecsDebit();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.confirmPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1 =
          ConfirmPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (confirmPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1 != null) {
      confirmPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1!
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
              ConfirmPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1>(
          null, confirmPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1);
    }
  }
}
