// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PostRequestBodyPackageDimensionsMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The height property
  double? height;

  ///  The length property
  double? length;

  ///  The weight property
  double? weight;

  ///  The width property
  double? width;

  /// Instantiates a new [PostRequestBodyPackageDimensionsMember1] and sets the default values.
  PostRequestBodyPackageDimensionsMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PostRequestBodyPackageDimensionsMember1 createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PostRequestBodyPackageDimensionsMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['height'] = (node) => height = node.getDoubleValue();
    deserializerMap['length'] = (node) => length = node.getDoubleValue();
    deserializerMap['weight'] = (node) => weight = node.getDoubleValue();
    deserializerMap['width'] = (node) => width = node.getDoubleValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeDoubleValue('height', height);
    writer.writeDoubleValue('length', length);
    writer.writeDoubleValue('weight', weight);
    writer.writeDoubleValue('width', width);
    writer.writeAdditionalData(additionalData);
  }
}
