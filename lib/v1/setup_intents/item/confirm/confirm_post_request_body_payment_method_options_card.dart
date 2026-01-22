// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_card_mandate_options.dart';
import './confirm_post_request_body_payment_method_options_card_network.dart';
import './confirm_post_request_body_payment_method_options_card_request_three_d_secure.dart';
import './confirm_post_request_body_payment_method_options_card_three_d_secure.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMandateOptions? mandateOptions;

  ///  The network property
  ConfirmPostRequestBodyPaymentMethodOptionsCardNetwork? network;

  ///  The request_three_d_secure property
  ConfirmPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure?
      requestThreeDSecure;

  ///  The three_d_secure property
  ConfirmPostRequestBodyPaymentMethodOptionsCardThreeDSecure? threeDSecure;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsCard] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsCard
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['mandate_options'] = (node) => mandateOptions =
        node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodOptionsCardMandateOptions>(
            ConfirmPostRequestBodyPaymentMethodOptionsCardMandateOptions
                .createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network = node
        .getEnumValue<ConfirmPostRequestBodyPaymentMethodOptionsCardNetwork>(
            (stringValue) =>
                ConfirmPostRequestBodyPaymentMethodOptionsCardNetwork.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['request_three_d_secure'] = (node) => requestThreeDSecure =
        node.getEnumValue<
                ConfirmPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure>(
            (stringValue) =>
                ConfirmPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['three_d_secure'] = (node) => threeDSecure =
        node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodOptionsCardThreeDSecure>(
            ConfirmPostRequestBodyPaymentMethodOptionsCardThreeDSecure
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMandateOptions>(
        'mandate_options', mandateOptions);
    writer
        .writeEnumValue<ConfirmPostRequestBodyPaymentMethodOptionsCardNetwork>(
            'network', network, (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardRequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardThreeDSecure>(
        'three_d_secure', threeDSecure);
    writer.writeAdditionalData(additionalData);
  }
}
