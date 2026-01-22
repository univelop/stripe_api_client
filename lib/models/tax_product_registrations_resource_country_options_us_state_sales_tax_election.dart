// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_registrations_resource_country_options_us_state_sales_tax_election_type.dart';

/// auto generated
class TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction.
  String? jurisdiction;

  ///  The type of the election for the state sales tax registration.
  TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType?
      type_;

  /// Instantiates a new [TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection] and sets the default values.
  TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['jurisdiction'] =
        (node) => jurisdiction = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType>(
        (stringValue) =>
            TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('jurisdiction', jurisdiction);
    writer.writeEnumValue<
            TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElectionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
