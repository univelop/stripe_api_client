// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_payment_method_options_klarna_subscriptions_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>], [String?]
class SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions
    implements Parsable {
  ///  Composed type representation for type [Iterable<SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>]
  Iterable<
          SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>?
      setupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>(
            SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.setupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1 =
          parseNode.getCollectionOfObjectValues<
                  SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>(
              SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1
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
    } else if (setupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1>(
          null,
          setupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptionsMember1);
    }
  }
}
