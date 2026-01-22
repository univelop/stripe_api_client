// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_card_present_member1_routing_requested_priority.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The requested_priority property
  ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1RoutingRequestedPriority?
      requestedPriority;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'requested_priority'] = (node) => requestedPriority = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1RoutingRequestedPriority>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1RoutingRequestedPriority
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
            ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1RoutingRequestedPriority>(
        'requested_priority', requestedPriority, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
