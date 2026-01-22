// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_mandate_options_card.dart';
import './subscription_payment_method_options_card_network.dart';
import './subscription_payment_method_options_card_request_three_d_secure.dart';

/// auto generated
class SubscriptionPaymentMethodOptionsCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  InvoiceMandateOptionsCard? mandateOptions;

  ///  Selected network to process this Subscription on. Depends on the available networks of the card attached to the Subscription. Can be only set confirm-time.
  SubscriptionPaymentMethodOptionsCardNetwork? network;

  ///  We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
  SubscriptionPaymentMethodOptionsCardRequestThreeDSecure? requestThreeDSecure;

  /// Instantiates a new [SubscriptionPaymentMethodOptionsCard] and sets the default values.
  SubscriptionPaymentMethodOptionsCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionPaymentMethodOptionsCard createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionPaymentMethodOptionsCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['mandate_options'] = (node) => mandateOptions =
        node.getObjectValue<InvoiceMandateOptionsCard>(
            InvoiceMandateOptionsCard.createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network =
        node.getEnumValue<SubscriptionPaymentMethodOptionsCardNetwork>(
            (stringValue) => SubscriptionPaymentMethodOptionsCardNetwork.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['request_three_d_secure'] = (node) => requestThreeDSecure =
        node.getEnumValue<
                SubscriptionPaymentMethodOptionsCardRequestThreeDSecure>(
            (stringValue) =>
                SubscriptionPaymentMethodOptionsCardRequestThreeDSecure.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<InvoiceMandateOptionsCard>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<SubscriptionPaymentMethodOptionsCardNetwork>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<
            SubscriptionPaymentMethodOptionsCardRequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
