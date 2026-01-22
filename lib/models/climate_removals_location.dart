// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ClimateRemovalsLocation implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The city where the supplier is located.
  String? city;

  ///  Two-letter ISO code representing the country where the supplier is located.
  String? country;

  ///  The geographic latitude where the supplier is located.
  double? latitude;

  ///  The geographic longitude where the supplier is located.
  double? longitude;

  ///  The state/county/province/region where the supplier is located.
  String? region;

  /// Instantiates a new [ClimateRemovalsLocation] and sets the default values.
  ClimateRemovalsLocation() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ClimateRemovalsLocation createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ClimateRemovalsLocation();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['city'] = (node) => city = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['latitude'] = (node) => latitude = node.getDoubleValue();
    deserializerMap['longitude'] = (node) => longitude = node.getDoubleValue();
    deserializerMap['region'] = (node) => region = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('city', city);
    writer.writeStringValue('country', country);
    writer.writeDoubleValue('latitude', latitude);
    writer.writeDoubleValue('longitude', longitude);
    writer.writeStringValue('region', region);
    writer.writeAdditionalData(additionalData);
  }
}
