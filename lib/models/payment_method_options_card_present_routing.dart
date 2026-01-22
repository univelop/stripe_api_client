// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_options_card_present_routing_requested_priority.dart';

/// auto generated
class PaymentMethodOptionsCardPresentRouting
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Requested routing priority
  PaymentMethodOptionsCardPresentRoutingRequestedPriority? requestedPriority;

  /// Instantiates a new [PaymentMethodOptionsCardPresentRouting] and sets the default values.
  PaymentMethodOptionsCardPresentRouting() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodOptionsCardPresentRouting createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodOptionsCardPresentRouting();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['requested_priority'] = (node) => requestedPriority = node
        .getEnumValue<PaymentMethodOptionsCardPresentRoutingRequestedPriority>(
            (stringValue) =>
                PaymentMethodOptionsCardPresentRoutingRequestedPriority.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentMethodOptionsCardPresentRoutingRequestedPriority>(
        'requested_priority', requestedPriority, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
