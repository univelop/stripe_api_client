// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class GelatoRelatedPerson implements AdditionalDataHolder, Parsable {
  ///  Token referencing the associated Account of the related Person resource.
  String? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Token referencing the related Person resource.
  String? person;

  /// Instantiates a new [GelatoRelatedPerson] and sets the default values.
  GelatoRelatedPerson() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoRelatedPerson createFromDiscriminatorValue(ParseNode parseNode) {
    return GelatoRelatedPerson();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node.getStringValue();
    deserializerMap['person'] = (node) => person = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account', account);
    writer.writeStringValue('person', person);
    writer.writeAdditionalData(additionalData);
  }
}
