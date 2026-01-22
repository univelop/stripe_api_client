// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_us_bank_account_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1]
class SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1]
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1?
      subscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.subscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1 =
          SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (subscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1 !=
        null) {
      subscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1!
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
              SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1>(
          null,
          subscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1);
    }
  }
}
