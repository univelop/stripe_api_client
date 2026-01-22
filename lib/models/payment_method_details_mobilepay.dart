// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './internal_card.dart';

/// auto generated
class PaymentMethodDetailsMobilepay implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Internal card details
  InternalCard? card;

  /// Instantiates a new [PaymentMethodDetailsMobilepay] and sets the default values.
  PaymentMethodDetailsMobilepay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsMobilepay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsMobilepay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<InternalCard>(
            InternalCard.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<InternalCard>('card', card);
    writer.writeAdditionalData(additionalData);
  }
}
