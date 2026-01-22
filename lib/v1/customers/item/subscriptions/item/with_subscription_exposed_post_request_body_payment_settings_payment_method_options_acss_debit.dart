// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_acss_debit_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1]
class WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1]
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1?
      withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1 =
          WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1 !=
        null) {
      withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1!
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
              WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1>(
          null,
          withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1);
    }
  }
}
