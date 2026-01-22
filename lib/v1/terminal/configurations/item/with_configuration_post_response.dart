// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/terminal/configuration.dart';

/// auto generated
/// Composed type wrapper for classes [Configuration]
class WithConfigurationPostResponse implements Parsable {
  ///  Composed type representation for type [Configuration]
  Configuration? configuration;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostResponse createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = WithConfigurationPostResponse();
    result.configuration = Configuration();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (configuration != null) {
      configuration!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Configuration>(null, configuration);
  }
}
