// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_card_mandate_options.dart';
import './with_intent_post_request_body_payment_method_options_card_network.dart';
import './with_intent_post_request_body_payment_method_options_card_request_three_d_secure.dart';
import './with_intent_post_request_body_payment_method_options_card_three_d_secure.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMandateOptions?
      mandateOptions;

  ///  The network property
  WithIntentPostRequestBodyPaymentMethodOptionsCardNetwork? network;

  ///  The request_three_d_secure property
  WithIntentPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure?
      requestThreeDSecure;

  ///  The three_d_secure property
  WithIntentPostRequestBodyPaymentMethodOptionsCardThreeDSecure? threeDSecure;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsCard] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsCard
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMandateOptions>(
        WithIntentPostRequestBodyPaymentMethodOptionsCardMandateOptions
            .createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network = node
        .getEnumValue<WithIntentPostRequestBodyPaymentMethodOptionsCardNetwork>(
            (stringValue) =>
                WithIntentPostRequestBodyPaymentMethodOptionsCardNetwork.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'request_three_d_secure'] = (node) => requestThreeDSecure = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['three_d_secure'] = (node) => threeDSecure =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodOptionsCardThreeDSecure>(
            WithIntentPostRequestBodyPaymentMethodOptionsCardThreeDSecure
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardNetwork>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardThreeDSecure>(
        'three_d_secure', threeDSecure);
    writer.writeAdditionalData(additionalData);
  }
}
