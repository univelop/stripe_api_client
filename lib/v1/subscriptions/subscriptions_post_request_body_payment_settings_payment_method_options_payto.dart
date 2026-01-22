// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_payto_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1]
class SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1]
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1?
      subscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.subscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1 =
          SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (subscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1 !=
        null) {
      subscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1!
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
              SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1>(
          null,
          subscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1);
    }
  }
}
