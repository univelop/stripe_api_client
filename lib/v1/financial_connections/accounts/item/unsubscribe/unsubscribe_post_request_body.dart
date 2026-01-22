// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './unsubscribe_post_request_body_features.dart';

/// auto generated
class UnsubscribePostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The list of account features from which you would like to unsubscribe.
  Iterable<UnsubscribePostRequestBodyFeatures>? features;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static UnsubscribePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return UnsubscribePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['features'] = (node) => features =
        node.getCollectionOfEnumValues<UnsubscribePostRequestBodyFeatures>(
            (stringValue) => UnsubscribePostRequestBodyFeatures.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeCollectionOfEnumValues<UnsubscribePostRequestBodyFeatures>(
        'features', features, (e) => e?.value);
  }
}
