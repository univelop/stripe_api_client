// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing/meter.dart';

/// auto generated
/// Composed type wrapper for classes [Meter], [String?]
class ThresholdsResourceUsageThresholdConfigMeter implements Parsable {
  ///  Composed type representation for type [Meter]
  Meter? meter;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ThresholdsResourceUsageThresholdConfigMeter
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = ThresholdsResourceUsageThresholdConfigMeter();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.meter = Meter();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (meter != null) {
      meter!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<Meter>(null, meter);
    }
  }
}
