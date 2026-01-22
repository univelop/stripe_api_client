// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class AddLinesPostRequestBodyLinesPeriod
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The end property
  int? end;

  ///  The start property
  int? start;

  /// Instantiates a new [AddLinesPostRequestBodyLinesPeriod] and sets the default values.
  AddLinesPostRequestBodyLinesPeriod() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AddLinesPostRequestBodyLinesPeriod createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AddLinesPostRequestBodyLinesPeriod();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['end'] = (node) => end = node.getIntValue();
    deserializerMap['start'] = (node) => start = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('end', end);
    writer.writeIntValue('start', start);
    writer.writeAdditionalData(additionalData);
  }
}
