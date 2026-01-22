// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_person_post_request_body_us_cfpb_data_ethnicity_details.dart';
import './with_person_post_request_body_us_cfpb_data_race_details.dart';

/// auto generated
/// Demographic data related to the person.
class WithPersonPostRequestBodyUsCfpbData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ethnicity_details property
  WithPersonPostRequestBodyUsCfpbDataEthnicityDetails? ethnicityDetails;

  ///  The race_details property
  WithPersonPostRequestBodyUsCfpbDataRaceDetails? raceDetails;

  ///  The self_identified_gender property
  String? selfIdentifiedGender;

  /// Instantiates a new [WithPersonPostRequestBodyUsCfpbData] and sets the default values.
  WithPersonPostRequestBodyUsCfpbData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPersonPostRequestBodyUsCfpbData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithPersonPostRequestBodyUsCfpbData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ethnicity_details'] = (node) => ethnicityDetails = node
        .getObjectValue<WithPersonPostRequestBodyUsCfpbDataEthnicityDetails>(
            WithPersonPostRequestBodyUsCfpbDataEthnicityDetails
                .createFromDiscriminatorValue);
    deserializerMap['race_details'] = (node) => raceDetails =
        node.getObjectValue<WithPersonPostRequestBodyUsCfpbDataRaceDetails>(
            WithPersonPostRequestBodyUsCfpbDataRaceDetails
                .createFromDiscriminatorValue);
    deserializerMap['self_identified_gender'] =
        (node) => selfIdentifiedGender = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<WithPersonPostRequestBodyUsCfpbDataEthnicityDetails>(
            'ethnicity_details', ethnicityDetails);
    writer.writeObjectValue<WithPersonPostRequestBodyUsCfpbDataRaceDetails>(
        'race_details', raceDetails);
    writer.writeStringValue('self_identified_gender', selfIdentifiedGender);
    writer.writeAdditionalData(additionalData);
  }
}
