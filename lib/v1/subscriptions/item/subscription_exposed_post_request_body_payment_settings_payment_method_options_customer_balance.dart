// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_customer_balance_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1]
class SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1]
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1?
      subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1 =
          SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1 !=
        null) {
      subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1!
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
              SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1>(
          null,
          subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1);
    }
  }
}
