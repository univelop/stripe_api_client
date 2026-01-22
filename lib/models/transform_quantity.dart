// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './transform_quantity_round.dart';

/// auto generated
class TransformQuantity implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Divide usage by this number.
  int? divideBy;

  ///  After division, either round the result `up` or `down`.
  TransformQuantityRound? round;

  /// Instantiates a new [TransformQuantity] and sets the default values.
  TransformQuantity() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TransformQuantity createFromDiscriminatorValue(ParseNode parseNode) {
    return TransformQuantity();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['divide_by'] = (node) => divideBy = node.getIntValue();
    deserializerMap['round'] = (node) => round =
        node.getEnumValue<TransformQuantityRound>((stringValue) =>
            TransformQuantityRound.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('divide_by', divideBy);
    writer.writeEnumValue<TransformQuantityRound>(
        'round', round, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
