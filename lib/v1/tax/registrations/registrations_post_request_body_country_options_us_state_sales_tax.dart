// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './registrations_post_request_body_country_options_us_state_sales_tax_elections.dart';

/// auto generated
class RegistrationsPostRequestBodyCountryOptionsUsStateSalesTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The elections property
  Iterable<RegistrationsPostRequestBodyCountryOptionsUsStateSalesTaxElections>?
      elections;

  /// Instantiates a new [RegistrationsPostRequestBodyCountryOptionsUsStateSalesTax] and sets the default values.
  RegistrationsPostRequestBodyCountryOptionsUsStateSalesTax()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RegistrationsPostRequestBodyCountryOptionsUsStateSalesTax
      createFromDiscriminatorValue(ParseNode parseNode) {
    return RegistrationsPostRequestBodyCountryOptionsUsStateSalesTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'elections'] = (node) => elections = node.getCollectionOfObjectValues<
            RegistrationsPostRequestBodyCountryOptionsUsStateSalesTaxElections>(
        RegistrationsPostRequestBodyCountryOptionsUsStateSalesTaxElections
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            RegistrationsPostRequestBodyCountryOptionsUsStateSalesTaxElections>(
        'elections', elections);
    writer.writeAdditionalData(additionalData);
  }
}
