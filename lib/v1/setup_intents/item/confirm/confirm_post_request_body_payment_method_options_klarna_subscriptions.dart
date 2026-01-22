// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_klarna_subscriptions_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>], [String?]
class ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions
    implements Parsable {
  ///  Composed type representation for type [Iterable<ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>]
  Iterable<
          ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>?
      confirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>(
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.confirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1 =
          parseNode.getCollectionOfObjectValues<
                  ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>(
              ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1
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
    } else if (confirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>(
          null,
          confirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1);
    }
  }
}
