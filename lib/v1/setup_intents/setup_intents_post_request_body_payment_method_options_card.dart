// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_payment_method_options_card_mandate_options.dart';
import './setup_intents_post_request_body_payment_method_options_card_network.dart';
import './setup_intents_post_request_body_payment_method_options_card_request_three_d_secure.dart';
import './setup_intents_post_request_body_payment_method_options_card_three_d_secure.dart';

/// auto generated
class SetupIntentsPostRequestBodyPaymentMethodOptionsCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  SetupIntentsPostRequestBodyPaymentMethodOptionsCardMandateOptions?
      mandateOptions;

  ///  The network property
  SetupIntentsPostRequestBodyPaymentMethodOptionsCardNetwork? network;

  ///  The request_three_d_secure property
  SetupIntentsPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure?
      requestThreeDSecure;

  ///  The three_d_secure property
  SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecure? threeDSecure;

  /// Instantiates a new [SetupIntentsPostRequestBodyPaymentMethodOptionsCard] and sets the default values.
  SetupIntentsPostRequestBodyPaymentMethodOptionsCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyPaymentMethodOptionsCard
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyPaymentMethodOptionsCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardMandateOptions>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsCardMandateOptions
            .createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network = node.getEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardNetwork>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardNetwork.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'request_three_d_secure'] = (node) => requestThreeDSecure = node.getEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'three_d_secure'] = (node) => threeDSecure = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecure>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecure
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardMandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardNetwork>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecure>(
        'three_d_secure', threeDSecure);
    writer.writeAdditionalData(additionalData);
  }
}
