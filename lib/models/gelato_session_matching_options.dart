// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './gelato_session_matching_options_dob.dart';
import './gelato_session_matching_options_name.dart';

/// auto generated
class GelatoSessionMatchingOptions implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Strictness of the DOB matching policy to apply.
  GelatoSessionMatchingOptionsDob? dob;

  ///  Strictness of the name matching policy to apply.
  GelatoSessionMatchingOptionsName? name;

  /// Instantiates a new [GelatoSessionMatchingOptions] and sets the default values.
  GelatoSessionMatchingOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoSessionMatchingOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return GelatoSessionMatchingOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['dob'] = (node) => dob =
        node.getEnumValue<GelatoSessionMatchingOptionsDob>((stringValue) =>
            GelatoSessionMatchingOptionsDob.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['name'] = (node) => name =
        node.getEnumValue<GelatoSessionMatchingOptionsName>((stringValue) =>
            GelatoSessionMatchingOptionsName.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<GelatoSessionMatchingOptionsDob>(
        'dob', dob, (e) => e?.value);
    writer.writeEnumValue<GelatoSessionMatchingOptionsName>(
        'name', name, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
