// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_klarna_subscriptions_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>], [String?]
class SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions
    implements Parsable {
  ///  Composed type representation for type [Iterable<SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>]
  Iterable<
          SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>?
      sessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>(
            SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.sessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1 =
          parseNode.getCollectionOfObjectValues<
                  SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>(
              SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1
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
    } else if (sessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>(
          null,
          sessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1);
    }
  }
}
