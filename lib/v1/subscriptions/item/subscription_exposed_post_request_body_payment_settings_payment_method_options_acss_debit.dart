// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_acss_debit_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1]
class SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1]
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1?
      subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1 =
          SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1 !=
        null) {
      subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1!
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
              SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1>(
          null,
          subscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1);
    }
  }
}
