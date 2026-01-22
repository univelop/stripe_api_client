// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './people_post_request_body_us_cfpb_data_ethnicity_details.dart';
import './people_post_request_body_us_cfpb_data_race_details.dart';

/// auto generated
/// Demographic data related to the person.
class PeoplePostRequestBodyUsCfpbData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ethnicity_details property
  PeoplePostRequestBodyUsCfpbDataEthnicityDetails? ethnicityDetails;

  ///  The race_details property
  PeoplePostRequestBodyUsCfpbDataRaceDetails? raceDetails;

  ///  The self_identified_gender property
  String? selfIdentifiedGender;

  /// Instantiates a new [PeoplePostRequestBodyUsCfpbData] and sets the default values.
  PeoplePostRequestBodyUsCfpbData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PeoplePostRequestBodyUsCfpbData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PeoplePostRequestBodyUsCfpbData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ethnicity_details'] = (node) => ethnicityDetails =
        node.getObjectValue<PeoplePostRequestBodyUsCfpbDataEthnicityDetails>(
            PeoplePostRequestBodyUsCfpbDataEthnicityDetails
                .createFromDiscriminatorValue);
    deserializerMap['race_details'] = (node) => raceDetails =
        node.getObjectValue<PeoplePostRequestBodyUsCfpbDataRaceDetails>(
            PeoplePostRequestBodyUsCfpbDataRaceDetails
                .createFromDiscriminatorValue);
    deserializerMap['self_identified_gender'] =
        (node) => selfIdentifiedGender = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PeoplePostRequestBodyUsCfpbDataEthnicityDetails>(
        'ethnicity_details', ethnicityDetails);
    writer.writeObjectValue<PeoplePostRequestBodyUsCfpbDataRaceDetails>(
        'race_details', raceDetails);
    writer.writeStringValue('self_identified_gender', selfIdentifiedGender);
    writer.writeAdditionalData(additionalData);
  }
}
