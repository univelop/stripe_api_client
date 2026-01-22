// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './person_ethnicity_details.dart';
import './person_race_details.dart';

/// auto generated
class PersonUsCfpbData implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The persons ethnicity details
  PersonEthnicityDetails? ethnicityDetails;

  ///  The persons race details
  PersonRaceDetails? raceDetails;

  ///  The persons self-identified gender
  String? selfIdentifiedGender;

  /// Instantiates a new [PersonUsCfpbData] and sets the default values.
  PersonUsCfpbData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PersonUsCfpbData createFromDiscriminatorValue(ParseNode parseNode) {
    return PersonUsCfpbData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ethnicity_details'] = (node) => ethnicityDetails =
        node.getObjectValue<PersonEthnicityDetails>(
            PersonEthnicityDetails.createFromDiscriminatorValue);
    deserializerMap['race_details'] = (node) => raceDetails =
        node.getObjectValue<PersonRaceDetails>(
            PersonRaceDetails.createFromDiscriminatorValue);
    deserializerMap['self_identified_gender'] =
        (node) => selfIdentifiedGender = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PersonEthnicityDetails>(
        'ethnicity_details', ethnicityDetails);
    writer.writeObjectValue<PersonRaceDetails>('race_details', raceDetails);
    writer.writeStringValue('self_identified_gender', selfIdentifiedGender);
    writer.writeAdditionalData(additionalData);
  }
}
