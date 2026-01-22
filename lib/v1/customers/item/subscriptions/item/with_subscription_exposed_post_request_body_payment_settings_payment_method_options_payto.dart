// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_payto_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1]
class WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1]
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1?
      withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1 =
          WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1 !=
        null) {
      withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1!
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
              WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1>(
          null,
          withSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1);
    }
  }
}
