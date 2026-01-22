// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './country_spec_verification_field_details.dart';

/// auto generated
class CountrySpecVerificationFields implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The company property
  CountrySpecVerificationFieldDetails? company;

  ///  The individual property
  CountrySpecVerificationFieldDetails? individual;

  /// Instantiates a new [CountrySpecVerificationFields] and sets the default values.
  CountrySpecVerificationFields() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CountrySpecVerificationFields createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CountrySpecVerificationFields();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['company'] = (node) => company =
        node.getObjectValue<CountrySpecVerificationFieldDetails>(
            CountrySpecVerificationFieldDetails.createFromDiscriminatorValue);
    deserializerMap['individual'] = (node) => individual =
        node.getObjectValue<CountrySpecVerificationFieldDetails>(
            CountrySpecVerificationFieldDetails.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CountrySpecVerificationFieldDetails>(
        'company', company);
    writer.writeObjectValue<CountrySpecVerificationFieldDetails>(
        'individual', individual);
    writer.writeAdditionalData(additionalData);
  }
}
