// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_types_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1>], [String?]
class SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypes
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1>]
  Iterable<
          SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1>?
      subscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypes
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypes();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1>(
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.subscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1 =
          parseNode.getCollectionOfObjectValues<
                  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1>(
              SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1
                  .createFromDiscriminatorValue);
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else if (subscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1>(
          null,
          subscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1);
    }
  }
}
