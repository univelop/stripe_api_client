// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_card_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1]
class WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1]
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1?
      withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1 =
          WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1 !=
        null) {
      withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1!
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
              WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1>(
          null,
          withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1);
    }
  }
}
