// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class Rule implements AdditionalDataHolder, Parsable {
  ///  The action taken on the payment.
  String? action;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Unique identifier for the object.
  String? id;

  ///  The predicate to evaluate the payment against.
  String? predicate;

  /// Instantiates a new [Rule] and sets the default values.
  Rule() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Rule createFromDiscriminatorValue(ParseNode parseNode) {
    return Rule();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['action'] = (node) => action = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['predicate'] = (node) => predicate = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('action', action);
    writer.writeStringValue('id', id);
    writer.writeStringValue('predicate', predicate);
    writer.writeAdditionalData(additionalData);
  }
}
