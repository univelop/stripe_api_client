// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ConfigurationsPostRequestBodyTippingMember1Aed
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fixed_amounts property
  Iterable<int>? fixedAmounts;

  ///  The percentages property
  Iterable<int>? percentages;

  ///  The smart_tip_threshold property
  int? smartTipThreshold;

  /// Instantiates a new [ConfigurationsPostRequestBodyTippingMember1Aed] and sets the default values.
  ConfigurationsPostRequestBodyTippingMember1Aed() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyTippingMember1Aed
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfigurationsPostRequestBodyTippingMember1Aed();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fixed_amounts'] =
        (node) => fixedAmounts = node.getCollectionOfPrimitiveValues<int>();
    deserializerMap['percentages'] =
        (node) => percentages = node.getCollectionOfPrimitiveValues<int>();
    deserializerMap['smart_tip_threshold'] =
        (node) => smartTipThreshold = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<int?>(
        'fixed_amounts', fixedAmounts);
    writer.writeCollectionOfPrimitiveValues<int?>('percentages', percentages);
    writer.writeIntValue('smart_tip_threshold', smartTipThreshold);
    writer.writeAdditionalData(additionalData);
  }
}
