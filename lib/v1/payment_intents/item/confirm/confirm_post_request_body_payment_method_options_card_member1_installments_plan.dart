// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_card_member1_installments_plan_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ConfirmPostRequestBodyPaymentMethodOptionsCardMember1InstallmentsPlanMember1], [String?]
class ConfirmPostRequestBodyPaymentMethodOptionsCardMember1InstallmentsPlan
    implements Parsable {
  ///  Composed type representation for type [ConfirmPostRequestBodyPaymentMethodOptionsCardMember1InstallmentsPlanMember1]
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1InstallmentsPlanMember1?
      confirmPostRequestBodyPaymentMethodOptionsCardMember1InstallmentsPlanMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsCardMember1InstallmentsPlan
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        ConfirmPostRequestBodyPaymentMethodOptionsCardMember1InstallmentsPlan();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.confirmPostRequestBodyPaymentMethodOptionsCardMember1InstallmentsPlanMember1 =
          ConfirmPostRequestBodyPaymentMethodOptionsCardMember1InstallmentsPlanMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (confirmPostRequestBodyPaymentMethodOptionsCardMember1InstallmentsPlanMember1 !=
        null) {
      confirmPostRequestBodyPaymentMethodOptionsCardMember1InstallmentsPlanMember1!
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
              ConfirmPostRequestBodyPaymentMethodOptionsCardMember1InstallmentsPlanMember1>(
          null,
          confirmPostRequestBodyPaymentMethodOptionsCardMember1InstallmentsPlanMember1);
    }
  }
}
