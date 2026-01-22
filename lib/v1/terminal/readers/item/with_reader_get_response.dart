// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/terminal/reader.dart';

/// auto generated
/// Composed type wrapper for classes [Reader]
class WithReaderGetResponse implements Parsable {
  ///  Composed type representation for type [Reader]
  Reader? reader;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithReaderGetResponse createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = WithReaderGetResponse();
    result.reader = Reader();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (reader != null) {
      reader!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Reader>(null, reader);
  }
}
