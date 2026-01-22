// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_card_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1]
class SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1]
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1?
      subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1 =
          SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1 !=
        null) {
      subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1!
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
              SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1>(
          null,
          subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1);
    }
  }
}
