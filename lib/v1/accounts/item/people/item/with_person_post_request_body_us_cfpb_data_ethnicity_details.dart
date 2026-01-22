// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_person_post_request_body_us_cfpb_data_ethnicity_details_ethnicity.dart';

/// auto generated
class WithPersonPostRequestBodyUsCfpbDataEthnicityDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ethnicity property
  Iterable<WithPersonPostRequestBodyUsCfpbDataEthnicityDetailsEthnicity>?
      ethnicity;

  ///  The ethnicity_other property
  String? ethnicityOther;

  /// Instantiates a new [WithPersonPostRequestBodyUsCfpbDataEthnicityDetails] and sets the default values.
  WithPersonPostRequestBodyUsCfpbDataEthnicityDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPersonPostRequestBodyUsCfpbDataEthnicityDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPersonPostRequestBodyUsCfpbDataEthnicityDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ethnicity'] = (node) => ethnicity =
        node.getCollectionOfEnumValues<
                WithPersonPostRequestBodyUsCfpbDataEthnicityDetailsEthnicity>(
            (stringValue) =>
                WithPersonPostRequestBodyUsCfpbDataEthnicityDetailsEthnicity
                    .values
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
            WithPersonPostRequestBodyUsCfpbDataEthnicityDetailsEthnicity>(
        'ethnicity', ethnicity, (e) => e?.value);
    writer.writeStringValue('ethnicity_other', ethnicityOther);
    writer.writeAdditionalData(additionalData);
  }
}
