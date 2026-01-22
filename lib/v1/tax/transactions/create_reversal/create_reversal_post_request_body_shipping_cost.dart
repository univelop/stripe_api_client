// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// The shipping cost to reverse.
class CreateReversalPostRequestBodyShippingCost
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The amount_tax property
  int? amountTax;

  /// Instantiates a new [CreateReversalPostRequestBodyShippingCost] and sets the default values.
  CreateReversalPostRequestBodyShippingCost() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateReversalPostRequestBodyShippingCost createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreateReversalPostRequestBodyShippingCost();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_tax'] = (node) => amountTax = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeIntValue('amount_tax', amountTax);
    writer.writeAdditionalData(additionalData);
  }
}
