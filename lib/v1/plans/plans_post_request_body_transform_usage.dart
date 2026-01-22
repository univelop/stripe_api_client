// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './plans_post_request_body_transform_usage_round.dart';

/// auto generated
/// Apply a transformation to the reported usage or set quantity before computing the billed price. Cannot be combined with `tiers`.
class PlansPostRequestBodyTransformUsage
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The divide_by property
  int? divideBy;

  ///  The round property
  PlansPostRequestBodyTransformUsageRound? round;

  /// Instantiates a new [PlansPostRequestBodyTransformUsage] and sets the default values.
  PlansPostRequestBodyTransformUsage() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PlansPostRequestBodyTransformUsage createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PlansPostRequestBodyTransformUsage();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['divide_by'] = (node) => divideBy = node.getIntValue();
    deserializerMap['round'] = (node) => round =
        node.getEnumValue<PlansPostRequestBodyTransformUsageRound>(
            (stringValue) => PlansPostRequestBodyTransformUsageRound.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('divide_by', divideBy);
    writer.writeEnumValue<PlansPostRequestBodyTransformUsageRound>(
        'round', round, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
