// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sigma_api_query_object.dart';

/// auto generated
/// A saved query object represents a query that can be executed for a run.
class SigmaApiQuery implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The name of the query.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  SigmaApiQueryObject? object;

  ///  The sql statement for the query.
  String? sql;

  /// Instantiates a new [SigmaApiQuery] and sets the default values.
  SigmaApiQuery() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SigmaApiQuery createFromDiscriminatorValue(ParseNode parseNode) {
    return SigmaApiQuery();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SigmaApiQueryObject>((stringValue) =>
            SigmaApiQueryObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['sql'] = (node) => sql = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<SigmaApiQueryObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('sql', sql);
    writer.writeAdditionalData(additionalData);
  }
}
