// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SavedQueriesPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The name of the query to update.
  String? name;

  ///  The sql statement to update the specified query statement with. This should be a valid Trino SQL statement that can be run in Sigma.
  String? sql;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SavedQueriesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SavedQueriesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['sql'] = (node) => sql = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('name', name);
    writer.writeStringValue('sql', sql);
  }
}
