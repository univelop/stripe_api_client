// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_registrations_resource_country_options_us_state_sales_tax_election.dart';

/// auto generated
class TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Elections for the state sales tax registration.
  Iterable<
          TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection>?
      elections;

  /// Instantiates a new [TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax] and sets the default values.
  TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'elections'] = (node) => elections = node.getCollectionOfObjectValues<
            TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection>(
        TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            TaxProductRegistrationsResourceCountryOptionsUsStateSalesTaxElection>(
        'elections', elections);
    writer.writeAdditionalData(additionalData);
  }
}
