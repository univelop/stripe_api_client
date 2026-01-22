// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class LegalEntityJapanAddress implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  City/Ward.
  String? city;

  ///  Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
  String? country;

  ///  Block/Building number.
  String? line1;

  ///  Building details.
  String? line2;

  ///  ZIP or postal code.
  String? postalCode;

  ///  Prefecture.
  String? state;

  ///  Town/cho-me.
  String? town;

  /// Instantiates a new [LegalEntityJapanAddress] and sets the default values.
  LegalEntityJapanAddress() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LegalEntityJapanAddress createFromDiscriminatorValue(
      ParseNode parseNode) {
    return LegalEntityJapanAddress();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['city'] = (node) => city = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['line1'] = (node) => line1 = node.getStringValue();
    deserializerMap['line2'] = (node) => line2 = node.getStringValue();
    deserializerMap['postal_code'] =
        (node) => postalCode = node.getStringValue();
    deserializerMap['state'] = (node) => state = node.getStringValue();
    deserializerMap['town'] = (node) => town = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('city', city);
    writer.writeStringValue('country', country);
    writer.writeStringValue('line1', line1);
    writer.writeStringValue('line2', line2);
    writer.writeStringValue('postal_code', postalCode);
    writer.writeStringValue('state', state);
    writer.writeStringValue('town', town);
    writer.writeAdditionalData(additionalData);
  }
}
