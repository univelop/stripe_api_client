// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './refresh_post_request_body_features.dart';

/// auto generated
class RefreshPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The list of account features that you would like to refresh.
  Iterable<RefreshPostRequestBodyFeatures>? features;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RefreshPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RefreshPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['features'] = (node) => features =
        node.getCollectionOfEnumValues<RefreshPostRequestBodyFeatures>(
            (stringValue) => RefreshPostRequestBodyFeatures.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeCollectionOfEnumValues<RefreshPostRequestBodyFeatures>(
        'features', features, (e) => e?.value);
  }
}
