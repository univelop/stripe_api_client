// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './prices_post_request_body_transform_quantity_round.dart';

/// auto generated
/// Apply a transformation to the reported usage or set quantity before computing the billed price. Cannot be combined with `tiers`.
class PricesPostRequestBodyTransformQuantity
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The divide_by property
  int? divideBy;

  ///  The round property
  PricesPostRequestBodyTransformQuantityRound? round;

  /// Instantiates a new [PricesPostRequestBodyTransformQuantity] and sets the default values.
  PricesPostRequestBodyTransformQuantity() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PricesPostRequestBodyTransformQuantity createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PricesPostRequestBodyTransformQuantity();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['divide_by'] = (node) => divideBy = node.getIntValue();
    deserializerMap['round'] = (node) => round =
        node.getEnumValue<PricesPostRequestBodyTransformQuantityRound>(
            (stringValue) => PricesPostRequestBodyTransformQuantityRound.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('divide_by', divideBy);
    writer.writeEnumValue<PricesPostRequestBodyTransformQuantityRound>(
        'round', round, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
