// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './people_post_request_body_us_cfpb_data_race_details_race.dart';

/// auto generated
class PeoplePostRequestBodyUsCfpbDataRaceDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The race property
  Iterable<PeoplePostRequestBodyUsCfpbDataRaceDetailsRace>? race;

  ///  The race_other property
  String? raceOther;

  /// Instantiates a new [PeoplePostRequestBodyUsCfpbDataRaceDetails] and sets the default values.
  PeoplePostRequestBodyUsCfpbDataRaceDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PeoplePostRequestBodyUsCfpbDataRaceDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PeoplePostRequestBodyUsCfpbDataRaceDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['race'] = (node) => race = node.getCollectionOfEnumValues<
            PeoplePostRequestBodyUsCfpbDataRaceDetailsRace>(
        (stringValue) => PeoplePostRequestBodyUsCfpbDataRaceDetailsRace.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['race_other'] = (node) => raceOther = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            PeoplePostRequestBodyUsCfpbDataRaceDetailsRace>(
        'race', race, (e) => e?.value);
    writer.writeStringValue('race_other', raceOther);
    writer.writeAdditionalData(additionalData);
  }
}
