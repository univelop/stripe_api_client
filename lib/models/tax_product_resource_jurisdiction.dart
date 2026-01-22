// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_resource_jurisdiction_level.dart';

/// auto generated
class TaxProductResourceJurisdiction implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
  String? country;

  ///  A human-readable name for the jurisdiction imposing the tax.
  String? displayName;

  ///  Indicates the level of the jurisdiction imposing the tax.
  TaxProductResourceJurisdictionLevel? level;

  ///  [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2), without country prefix. For example, "NY" for New York, United States.
  String? state;

  /// Instantiates a new [TaxProductResourceJurisdiction] and sets the default values.
  TaxProductResourceJurisdiction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductResourceJurisdiction createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TaxProductResourceJurisdiction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['level'] = (node) => level =
        node.getEnumValue<TaxProductResourceJurisdictionLevel>((stringValue) =>
            TaxProductResourceJurisdictionLevel.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['state'] = (node) => state = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('country', country);
    writer.writeStringValue('display_name', displayName);
    writer.writeEnumValue<TaxProductResourceJurisdictionLevel>(
        'level', level, (e) => e?.value);
    writer.writeStringValue('state', state);
    writer.writeAdditionalData(additionalData);
  }
}
