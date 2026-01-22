// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_token_post_request_body_status.dart';

/// auto generated
class WithTokenPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Specifies which status the token should be updated to.
  WithTokenPostRequestBodyStatus? status;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithTokenPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithTokenPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<WithTokenPostRequestBodyStatus>((stringValue) =>
            WithTokenPostRequestBodyStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeEnumValue<WithTokenPostRequestBodyStatus>(
        'status', status, (e) => e?.value);
  }
}
