// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './persons_post_request_body_us_cfpb_data_ethnicity_details_ethnicity.dart';

/// auto generated
class PersonsPostRequestBodyUsCfpbDataEthnicityDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ethnicity property
  Iterable<PersonsPostRequestBodyUsCfpbDataEthnicityDetailsEthnicity>?
      ethnicity;

  ///  The ethnicity_other property
  String? ethnicityOther;

  /// Instantiates a new [PersonsPostRequestBodyUsCfpbDataEthnicityDetails] and sets the default values.
  PersonsPostRequestBodyUsCfpbDataEthnicityDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PersonsPostRequestBodyUsCfpbDataEthnicityDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PersonsPostRequestBodyUsCfpbDataEthnicityDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ethnicity'] = (node) => ethnicity =
        node.getCollectionOfEnumValues<
                PersonsPostRequestBodyUsCfpbDataEthnicityDetailsEthnicity>(
            (stringValue) =>
                PersonsPostRequestBodyUsCfpbDataEthnicityDetailsEthnicity.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['ethnicity_other'] =
        (node) => ethnicityOther = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            PersonsPostRequestBodyUsCfpbDataEthnicityDetailsEthnicity>(
        'ethnicity', ethnicity, (e) => e?.value);
    writer.writeStringValue('ethnicity_other', ethnicityOther);
    writer.writeAdditionalData(additionalData);
  }
}
