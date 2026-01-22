// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodCardPresentNetworks
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  All networks available for selection via [payment_method_options.card.network](/api/payment_intents/confirm#confirm_payment_intent-payment_method_options-card-network).
  Iterable<String>? available;

  ///  The preferred network for the card.
  String? preferred;

  /// Instantiates a new [PaymentMethodCardPresentNetworks] and sets the default values.
  PaymentMethodCardPresentNetworks() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodCardPresentNetworks createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodCardPresentNetworks();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['available'] =
        (node) => available = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['preferred'] = (node) => preferred = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('available', available);
    writer.writeStringValue('preferred', preferred);
    writer.writeAdditionalData(additionalData);
  }
}
