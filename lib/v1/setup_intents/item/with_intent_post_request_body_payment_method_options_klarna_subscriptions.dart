// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_klarna_subscriptions_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>], [String?]
class WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>]
  Iterable<
          WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>?
      withIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>(
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>(
              WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1
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
    } else if (withIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>(
          null,
          withIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1);
    }
  }
}
