// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class RequestsPostRequestBodyRequestHeaders
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The name property
  String? name;

  ///  The value property
  String? value;

  /// Instantiates a new [RequestsPostRequestBodyRequestHeaders] and sets the default values.
  RequestsPostRequestBodyRequestHeaders() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RequestsPostRequestBodyRequestHeaders createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RequestsPostRequestBodyRequestHeaders();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['value'] = (node) => value = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('name', name);
    writer.writeStringValue('value', value);
    writer.writeAdditionalData(additionalData);
  }
}
