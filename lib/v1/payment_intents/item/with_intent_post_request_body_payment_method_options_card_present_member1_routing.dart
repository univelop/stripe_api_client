// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_card_present_member1_routing_requested_priority.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The requested_priority property
  WithIntentPostRequestBodyPaymentMethodOptionsCardPresentMember1RoutingRequestedPriority?
      requestedPriority;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'requested_priority'] = (node) => requestedPriority = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardPresentMember1RoutingRequestedPriority>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsCardPresentMember1RoutingRequestedPriority
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardPresentMember1RoutingRequestedPriority>(
        'requested_priority', requestedPriority, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
