// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_klarna_member1_subscriptions_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SubscriptionsMember1>], [String?]
class PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions
    implements Parsable {
  ///  Composed type representation for type [Iterable<PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SubscriptionsMember1>]
  Iterable<
          PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SubscriptionsMember1>?
      paymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SubscriptionsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SubscriptionsMember1>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SubscriptionsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.paymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SubscriptionsMember1 =
          parseNode.getCollectionOfObjectValues<
                  PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SubscriptionsMember1>(
              PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SubscriptionsMember1
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
    } else if (paymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SubscriptionsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SubscriptionsMember1>(
          null,
          paymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SubscriptionsMember1);
    }
  }
}
