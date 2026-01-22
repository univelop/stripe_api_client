// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './personalization_design.dart';

/// auto generated
/// Composed type wrapper for classes [PersonalizationDesign], [String?]
class CardPersonalizationDesign implements Parsable {
  ///  Composed type representation for type [PersonalizationDesign]
  PersonalizationDesign? personalizationDesign;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardPersonalizationDesign createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = CardPersonalizationDesign();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.personalizationDesign = PersonalizationDesign();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (personalizationDesign != null) {
      personalizationDesign!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<PersonalizationDesign>(
          null, personalizationDesign);
    }
  }
}
