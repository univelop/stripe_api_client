// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PriceTier implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Price for the entire tier.
  int? flatAmount;

  ///  Same as `flat_amount`, but contains a decimal value with at most 12 decimal places.
  String? flatAmountDecimal;

  ///  Per unit price for units relevant to the tier.
  int? unitAmount;

  ///  Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
  String? unitAmountDecimal;

  ///  Up to and including to this quantity will be contained in the tier.
  int? upTo;

  /// Instantiates a new [PriceTier] and sets the default values.
  PriceTier() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PriceTier createFromDiscriminatorValue(ParseNode parseNode) {
    return PriceTier();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['flat_amount'] = (node) => flatAmount = node.getIntValue();
    deserializerMap['flat_amount_decimal'] =
        (node) => flatAmountDecimal = node.getStringValue();
    deserializerMap['unit_amount'] = (node) => unitAmount = node.getIntValue();
    deserializerMap['unit_amount_decimal'] =
        (node) => unitAmountDecimal = node.getStringValue();
    deserializerMap['up_to'] = (node) => upTo = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('flat_amount', flatAmount);
    writer.writeStringValue('flat_amount_decimal', flatAmountDecimal);
    writer.writeIntValue('unit_amount', unitAmount);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
    writer.writeIntValue('up_to', upTo);
    writer.writeAdditionalData(additionalData);
  }
}
