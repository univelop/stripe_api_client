// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_registrations_resource_country_options_simplified_type.dart';

/// auto generated
class TaxProductRegistrationsResourceCountryOptionsSimplified
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Type of registration in `country`.
  TaxProductRegistrationsResourceCountryOptionsSimplifiedType? type_;

  /// Instantiates a new [TaxProductRegistrationsResourceCountryOptionsSimplified] and sets the default values.
  TaxProductRegistrationsResourceCountryOptionsSimplified()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductRegistrationsResourceCountryOptionsSimplified
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxProductRegistrationsResourceCountryOptionsSimplified();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            TaxProductRegistrationsResourceCountryOptionsSimplifiedType>(
        (stringValue) =>
            TaxProductRegistrationsResourceCountryOptionsSimplifiedType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            TaxProductRegistrationsResourceCountryOptionsSimplifiedType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
